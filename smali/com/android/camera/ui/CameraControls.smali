.class public Lcom/android/camera/ui/CameraControls;
.super Lcom/android/camera/ui/RotatableLayout;
.source "CameraControls.java"

# interfaces
.implements Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraControls$ArrowTextView;,
        Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;
    }
.end annotation


# static fields
.field private static final ANIME_DURATION:I = 0x12c

.field private static final ARC_AF_PARAM:[Ljava/lang/String;

.field private static final ARC_AF_RES_BIG_IDS:[I

.field private static final ARC_AF_RES_SMALL_IDS:[I

.field private static final ARC_EV_PARAM:[Ljava/lang/String;

.field private static final ARC_EV_RES_BIG_IDS:[I

.field private static final ARC_EV_RES_SMALL_IDS:[Ljava/lang/String;

.field private static final ARC_ISO_PARAM:[Ljava/lang/String;

.field private static final ARC_ISO_PARAM_TEXT:[Ljava/lang/String;

.field private static final ARC_ISO_RES_BIG_IDS:[I

.field private static final ARC_ISO_RES_SMALL_IDS:[I

.field private static final ARC_S_PARAM:[Ljava/lang/String;

.field private static final ARC_S_RES_BIG_IDS:[I

.field private static final ARC_S_RES_SMALL_IDS:[Ljava/lang/String;

.field private static final ARC_WB_PARAM:[Ljava/lang/String;

.field private static final ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

.field private static final ARC_WB_RES_BIG_IDS:[I

.field private static final ARC_WB_RES_SMALL_IDS:[I

.field private static final BOKEH_INDEX:I = 0xc

.field private static BOKEH_SWITCHER_INVISBLE:Z = false

.field private static final EXIT_PANORAMA_INDEX:I = 0xb

.field private static final FILTER_MODE_INDEX:I = 0x3

.field private static final FLASH_SWITCHER_INDEX:I = 0x16

.field private static final FRONT_BACK_INDEX:I = 0x0

.field private static HDR_INDEX:I = 0x0

.field public static HDR_IS_SHOW_ON_UI:Z = false

.field private static final HEIGHT_GRID:I = 0x7

.field private static final HIGH_REMAINING_PHOTOS:I = 0xf4240

.field private static final INDICATOR_INDEX:I = 0x8

.field private static final LAYOUT_SWITCH_WIDTH_DEVIATION:I = 0x28

.field private static final LOW_REMAINING_PHOTOS:I = 0x14

.field private static final MAX_INDEX:I = 0x1a

.field private static final MENU_INDEX:I = 0x4

.field private static final MUTE_INDEX:I = 0x9

.field private static final PREVIEW_INDEX:I = 0x7

.field private static final PRO_AF:I = 0x1

.field private static final PRO_AF_INDEX:I = 0xe

.field private static final PRO_ANGLE_KEY:[Ljava/lang/String;

.field private static final PRO_DEFAULT_LEVEL_KEY:[I

.field private static final PRO_EV:I = 0x4

.field private static final PRO_EV_INDEX:I = 0x11

.field private static final PRO_ISO:I = 0x3

.field private static final PRO_ISO_INDEX:I = 0x10

.field private static final PRO_LEVEL_KEY:[Ljava/lang/String;

.field private static final PRO_MANUAL_INDEX:I = 0x13

.field private static final PRO_MODE_INDEX:I = 0x14

.field private static final PRO_RESET:I = 0x0

.field private static final PRO_RESET_DISPLAY:[Ljava/lang/String;

.field private static final PRO_RESET_INDEX:I = 0xd

.field private static final PRO_RESET_KEY:[Ljava/lang/String;

.field private static final PRO_S:I = 0x2

.field private static final PRO_S_INDEX:I = 0xf

.field private static final PRO_TEXT_KEY:[Ljava/lang/String;

.field private static final PRO_WB:I = 0x5

.field private static final PRO_WB_INDEX:I = 0x12

.field private static final SCENEMODE_DETECT_INDEX:I = 0x19

.field private static final SCENE_MODE_INDEX:I = 0x2

.field private static final SHUTTER_INDEX:I = 0x6

.field private static final SWITCHER_INDEX:I = 0x5

.field private static final SWITCH_BACKGROUND_ALPHA_VALUE:I = 0xe6

.field private static final TAG:Ljava/lang/String; = "CAM_Controls"

.field private static final THUMB_PRESSED_RES_IDS:[I

.field private static final THUMB_RES_IDS:[I

.field private static final TS_MAKEUP_INDEX:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field private static final VIDEO_FLASH_INDEX:I = 0x17

.field private static final VIDEO_PAUSE_INDEX:I = 0x18

.field private static final VIDEO_SHUTTER_INDEX:I = 0xa

.field private static WIDTH_GRID:I

.field private static isAnimating:Z

.field public static isRecoding:Z

.field private static mBottomMargin:I

.field private static mTopMargin:I

.field private static toast:Landroid/widget/Toast;


# instance fields
.field private final IS_RESET_CURRENT:Z

.field private LAYOUT_SWITCH_HEIGHT_DEVIATION:I

.field private final PRO_AUTO_TEXT:Ljava/lang/String;

.field private final PRO_MF_TEXT:Ljava/lang/String;

.field private final PRO_RESETD:Z

.field private afStr:Ljava/lang/String;

.field private arcWBPara:Lcom/android/camera/ui/RotateImageView;

.field private currentLevel:I

.field private currentWidthPx:I

.field private evDeafultIndex:I

.field private evDefaultText:Ljava/lang/String;

.field private evStr:Ljava/lang/String;

.field private height_deviation_px:I

.field inlistener:Landroid/animation/Animator$AnimatorListener;

.field private isManual:Z

.field private isPicture:Z

.field public isProParamsChanged:Z

.field private isReset:Z

.field public is_pro_mode:Z

.field private isoDeafultIndex:I

.field private isoDefaultText:Ljava/lang/String;

.field private final isoManual:Ljava/lang/String;

.field private isoStr:Ljava/lang/String;

.field protected mAFPreference:Lcom/android/camera/ListPreference;

.field private mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

.field private mBackgroundView:Landroid/view/View;

.field private mBokehSwitcher:Landroid/view/View;

.field mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraSwitch:I

.field private mCameraSwitchPx:I

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentRemaining:I

.field private mCurrentScene:Ljava/lang/String;

.field protected mEVPreference:Lcom/android/camera/IconListPreference;

.field private mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

.field private mExitPanorama:Landroid/view/View;

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFilterWidthX:I

.field private mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mFrontBackWidth:I

.field private mHdrSwitcher:Landroid/view/View;

.field private mHideRemainingPhoto:Z

.field private mHideThumbnail:Z

.field protected mISOPreference:Lcom/android/camera/IconListPreference;

.field private mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

.field private mIndicators:Landroid/view/View;

.field private mIsBokehMode:Z

.field private mLastViewId:I

.field private mLocSet:Z

.field private mLocX:[[F

.field private mLocY:[[F

.field private mMPro_manual:Lcom/android/camera/ui/RotateLayout;

.field protected mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/View;

.field private mModeDetectSwitcher:Landroid/view/View;

.field private mMpro_af:Lcom/android/camera/ui/RotateLayout;

.field private mMpro_ev:Lcom/android/camera/ui/RotateLayout;

.field private mMpro_iso:Lcom/android/camera/ui/RotateLayout;

.field private mMpro_reset:Lcom/android/camera/ui/RotateLayout;

.field private mMpro_s:Lcom/android/camera/ui/RotateLayout;

.field private mMpro_wb:Lcom/android/camera/ui/RotateLayout;

.field private mMute:Landroid/view/View;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field mParameters:Landroid/hardware/Camera$Parameters;

.field private mPhotoModule:Lcom/android/camera/PhotoModule;

.field private mPhotoMoudle:Z

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreview:Landroid/view/View;

.field private mPreviewLeft:I

.field private mPreviewRatio:I

.field private mPreviewVideoWidth:I

.field private mPreviewVideoWidthPx:I

.field private mPreviewWidth:I

.field private mPreviewWidthPx:I

.field private mPreviewWidthX:I

.field private mPro_af_text:Landroid/widget/TextView;

.field private mPro_ev_text:Landroid/widget/TextView;

.field private mPro_iso_text:Landroid/widget/TextView;

.field private mPro_s_text:Landroid/widget/TextView;

.field private mPro_wb_text:Landroid/widget/TextView;

.field private mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

.field private mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

.field private mRemainingPhotos:Landroid/widget/LinearLayout;

.field private mRemainingPhotosText:Landroid/widget/TextView;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewRetakeButton:Landroid/view/View;

.field protected mSPreference:Lcom/android/camera/ListPreference;

.field private mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mScenePreference:Lcom/android/camera/IconListPreference;

.field public mShowingContainer:Z

.field private mShutter:Landroid/view/View;

.field private mSize:I

.field private mSwitchWidth:I

.field private mSwitchWidthPx:I

.field private mSwitcher:Landroid/view/View;

.field private mSwitcherWidth:I

.field private mTsMakeupSwitcher:Landroid/view/View;

.field private mVideoFlash:Landroid/view/View;

.field private mVideoPause:Lcom/android/camera/PauseButton;

.field private mVideoShutter:Landroid/view/View;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mWBPreference:Lcom/android/camera/IconListPreference;

.field private manualCameraNumber:I

.field private menuLeftWidth:I

.field private menuRightWidth:I

.field private modeDetectHeight:I

.field private muteLeftWidth:I

.field outlistener:Landroid/animation/Animator$AnimatorListener;

.field private proHeightY:I

.field private sDefaultText:Ljava/lang/String;

.field private sStr:Ljava/lang/String;

.field private wbStr:Ljava/lang/String;

.field private width_deviation_px:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 152
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 155
    sput-boolean v3, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 158
    const/16 v0, 0x15

    sput v0, Lcom/android/camera/ui/CameraControls;->HDR_INDEX:I

    .line 209
    sput v3, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    .line 210
    sput v3, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    .line 226
    sput-boolean v3, Lcom/android/camera/ui/CameraControls;->isRecoding:Z

    .line 235
    sput-boolean v3, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    .line 267
    sput-boolean v5, Lcom/android/camera/ui/CameraControls;->BOKEH_SWITCHER_INVISBLE:Z

    .line 322
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pro_reset_level"

    aput-object v1, v0, v3

    const-string v1, "pro_af_level"

    aput-object v1, v0, v5

    const-string v1, "pro_s_level"

    aput-object v1, v0, v6

    const-string v1, "pro_iso_level"

    aput-object v1, v0, v7

    const-string v1, "pro_ev_level"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "pro_wb_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    .line 330
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pro_reset_angle"

    aput-object v1, v0, v3

    const-string v1, "pro_af_angle"

    aput-object v1, v0, v5

    const-string v1, "pro_s_angle"

    aput-object v1, v0, v6

    const-string v1, "pro_iso_angle"

    aput-object v1, v0, v7

    const-string v1, "pro_ev_angle"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "pro_wb_angle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    .line 338
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pro_reset_key"

    aput-object v1, v0, v3

    const-string v1, "pro_af_reset"

    aput-object v1, v0, v5

    const-string v1, "pro_s_reset"

    aput-object v1, v0, v6

    const-string v1, "pro_iso_reset"

    aput-object v1, v0, v7

    const-string v1, "pro_ev_reset"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "pro_wb_reset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    .line 346
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pro_reset_text"

    aput-object v1, v0, v3

    const-string v1, "pro_af_text"

    aput-object v1, v0, v5

    const-string v1, "pro_s_text"

    aput-object v1, v0, v6

    const-string v1, "pro_iso_text"

    aput-object v1, v0, v7

    const-string v1, "pro_ev_text"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "pro_wb_text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    .line 354
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Reset"

    aput-object v1, v0, v3

    const-string v1, "AF"

    aput-object v1, v0, v5

    const-string v1, "Auto"

    aput-object v1, v0, v6

    const-string v1, "Auto"

    aput-object v1, v0, v7

    const-string v1, "0"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "Auto"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->PRO_RESET_DISPLAY:[Ljava/lang/String;

    .line 362
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    .line 372
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->THUMB_RES_IDS:[I

    .line 381
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/ui/CameraControls;->THUMB_PRESSED_RES_IDS:[I

    .line 390
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_AF_RES_SMALL_IDS:[I

    .line 402
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_AF_RES_BIG_IDS:[I

    .line 414
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10"

    aput-object v1, v0, v3

    const-string v1, "20"

    aput-object v1, v0, v5

    const-string v1, "30"

    aput-object v1, v0, v6

    const-string v1, "40"

    aput-object v1, v0, v7

    const-string v1, "50"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "60"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "70"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "80"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "100"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_AF_PARAM:[Ljava/lang/String;

    .line 427
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0.5"

    aput-object v1, v0, v3

    const-string v1, "0.625"

    aput-object v1, v0, v5

    const-string v1, "0.667"

    aput-object v1, v0, v6

    const-string v1, "0.8"

    aput-object v1, v0, v7

    const-string v1, "1"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "1.25"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1.33"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1.56"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "2.5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3.125"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "4.5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "6.25"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "12.5"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "16.67"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "33.33"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "66.67"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "76.9"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "125"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "166.67"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "200"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "250"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_S_RES_SMALL_IDS:[Ljava/lang/String;

    .line 433
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_S_RES_BIG_IDS:[I

    .line 448
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1/2000"

    aput-object v1, v0, v3

    const-string v1, "1/1600"

    aput-object v1, v0, v5

    const-string v1, "1/1500"

    aput-object v1, v0, v6

    const-string v1, "1/1250"

    aput-object v1, v0, v7

    const-string v1, "1/1000"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "1/800"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1/750"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1/640"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1/500"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1/400"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1/320"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1/250"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1/200"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1/160"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1/125"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "1/100"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "1/80"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "1/60"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "1/50"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "1/40"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "1/30"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1/25"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "1/20"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "1/15"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "1/13"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "1/8"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "1/6"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1/5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "1/4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    .line 455
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_ISO_RES_SMALL_IDS:[I

    .line 459
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_ISO_RES_BIG_IDS:[I

    .line 469
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ISO100"

    aput-object v1, v0, v3

    const-string v1, "ISO200"

    aput-object v1, v0, v5

    const-string v1, "ISO400"

    aput-object v1, v0, v6

    const-string v1, "ISO800"

    aput-object v1, v0, v7

    const-string v1, "ISO1600"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    .line 476
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "100"

    aput-object v1, v0, v3

    const-string v1, "200"

    aput-object v1, v0, v5

    const-string v1, "400"

    aput-object v1, v0, v6

    const-string v1, "800"

    aput-object v1, v0, v7

    const-string v1, "1600"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM_TEXT:[Ljava/lang/String;

    .line 484
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-2"

    aput-object v1, v0, v3

    const-string v1, "-1"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const-string v1, "2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_EV_RES_SMALL_IDS:[Ljava/lang/String;

    .line 487
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_EV_RES_BIG_IDS:[I

    .line 495
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-12"

    aput-object v1, v0, v3

    const-string v1, "-6"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "6"

    aput-object v1, v0, v7

    const-string v1, "12"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    .line 503
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_WB_RES_SMALL_IDS:[I

    .line 511
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_WB_RES_BIG_IDS:[I

    .line 519
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "incandescent"

    aput-object v1, v0, v3

    const-string v1, "fluorescent"

    aput-object v1, v0, v5

    const-string v1, "daylight"

    aput-object v1, v0, v6

    const-string v1, "cloudy-daylight"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM:[Ljava/lang/String;

    .line 527
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "2500K"

    aput-object v1, v0, v3

    const-string v1, "4000K"

    aput-object v1, v0, v5

    const-string v1, "5000K"

    aput-object v1, v0, v6

    const-string v1, "6500K"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

    return-void

    .line 362
    nop

    :array_0
    .array-data 4
        0x0
        0x7
        0xe
        0x2
        0x2
        0x2
    .end array-data

    .line 372
    :array_1
    .array-data 4
        0x7f020037
        0x7f02003e
        0x7f02003a
        0x7f0200c1
        0x7f02003a
        0x7f02018f
    .end array-data

    .line 381
    :array_2
    .array-data 4
        0x7f020038
        0x7f0200c3
        0x7f0200db
        0x7f0200c2
        0x7f0200c3
        0x7f02018f
    .end array-data

    .line 390
    :array_3
    .array-data 4
        0x7f020190
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020194
    .end array-data

    .line 402
    :array_4
    .array-data 4
        0x7f020190
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020058
        0x7f020194
    .end array-data

    .line 433
    :array_5
    .array-data 4
        0x7f02018e
        0x7f0200de
        0x7f0200e0
        0x7f0200e2
        0x7f0200e5
        0x7f0200e9
        0x7f02018e
        0x7f0200de
        0x7f0200e0
        0x7f0200e2
        0x7f0200e5
        0x7f0200e9
    .end array-data

    .line 455
    :array_6
    .array-data 4
        0x64
        0xc8
        0x190
        0x320
        0x640
    .end array-data

    .line 459
    :array_7
    .array-data 4
        0x7f02018e
        0x7f0200de
        0x7f0200e0
        0x7f0200e2
        0x7f0200e5
        0x7f0200e9
        0x7f0200ea
    .end array-data

    .line 487
    :array_8
    .array-data 4
        0x7f0200e9
        0x7f0200de
        0x7f0200e0
        0x7f0200e2
        0x7f0200e5
    .end array-data

    .line 503
    :array_9
    .array-data 4
        0x7f020001
        0x7f020003
        0x7f020004
        0x7f020002
    .end array-data

    .line 511
    :array_a
    .array-data 4
        0x7f020001
        0x7f020003
        0x7f020004
        0x7f020002
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1233
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1207
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    filled-new-array {v6, v7}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    .line 197
    filled-new-array {v6, v7}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    .line 198
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mLocSet:Z

    .line 199
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 201
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mHideThumbnail:Z

    .line 205
    iput v5, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    .line 217
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    .line 218
    iput v5, p0, Lcom/android/camera/ui/CameraControls;->mLastViewId:I

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mScenePreference:Lcom/android/camera/IconListPreference;

    .line 228
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mCurrentScene:Ljava/lang/String;

    .line 232
    const/16 v1, 0x1b

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->LAYOUT_SWITCH_HEIGHT_DEVIATION:I

    .line 237
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitchWidth:I

    .line 238
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitchWidthPx:I

    .line 239
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidth:I

    .line 240
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidthPx:I

    .line 241
    const/16 v1, 0x8c

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewVideoWidth:I

    .line 242
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mPreviewVideoWidthPx:I

    .line 243
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->mCameraSwitch:I

    .line 244
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mCameraSwitchPx:I

    .line 245
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    .line 246
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->width_deviation_px:I

    .line 247
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    .line 249
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mPreviewLeft:I

    .line 250
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mSwitcherWidth:I

    .line 251
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackWidth:I

    .line 252
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidthX:I

    .line 253
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->mFilterWidthX:I

    .line 254
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    .line 256
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->muteLeftWidth:I

    .line 257
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->menuRightWidth:I

    .line 261
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->menuLeftWidth:I

    .line 264
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    .line 266
    iput v5, p0, Lcom/android/camera/ui/CameraControls;->mCameraId:I

    .line 270
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mPhotoMoudle:Z

    .line 284
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->currentLevel:I

    .line 286
    const-string v1, "manual"

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoManual:Ljava/lang/String;

    .line 288
    iput-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->isPicture:Z

    .line 289
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->isReset:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    .line 292
    iput v6, p0, Lcom/android/camera/ui/CameraControls;->manualCameraNumber:I

    .line 295
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->is_pro_mode:Z

    .line 299
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    .line 300
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->evDeafultIndex:I

    .line 301
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->sDefaultText:Ljava/lang/String;

    .line 302
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoDefaultText:Ljava/lang/String;

    .line 303
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->evDefaultText:Ljava/lang/String;

    .line 305
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->afStr:Ljava/lang/String;

    .line 306
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    .line 307
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    .line 308
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->evStr:Ljava/lang/String;

    .line 309
    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->wbStr:Ljava/lang/String;

    .line 312
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    .line 315
    const-string v1, "MF"

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->PRO_MF_TEXT:Ljava/lang/String;

    .line 316
    const-string v1, "Auto"

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->PRO_AUTO_TEXT:Ljava/lang/String;

    .line 317
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->IS_RESET_CURRENT:Z

    .line 318
    iput-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->PRO_RESETD:Z

    .line 320
    iput v3, p0, Lcom/android/camera/ui/CameraControls;->modeDetectHeight:I

    .line 537
    new-instance v1, Lcom/android/camera/ui/CameraControls$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraControls$1;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    .line 828
    new-instance v1, Lcom/android/camera/ui/CameraControls$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraControls$2;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->outlistener:Landroid/animation/Animator$AnimatorListener;

    .line 1163
    new-instance v1, Lcom/android/camera/ui/CameraControls$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraControls$3;-><init>(Lcom/android/camera/ui/CameraControls;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->inlistener:Landroid/animation/Animator$AnimatorListener;

    .line 1208
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    .line 1209
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    .line 1211
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    .line 1212
    .local v0, "NumberCamera":I
    iget v1, p0, Lcom/android/camera/ui/CameraControls;->manualCameraNumber:I

    if-le v0, v1, :cond_0

    .line 1213
    iput-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    .line 1216
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    .line 1221
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v2, 0x7f0e030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->sDefaultText:Ljava/lang/String;

    .line 1222
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0310

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoDefaultText:Ljava/lang/String;

    .line 1223
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0311

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->evDefaultText:Ljava/lang/String;

    .line 1225
    new-instance v1, Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CameraControls$ArrowTextView;-><init>(Lcom/android/camera/ui/CameraControls;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    .line 1226
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraControls;->addView(Landroid/view/View;)V

    .line 1227
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraControls;->setClipChildren(Z)V

    .line 1229
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/CameraControls;->setMeasureAllChildren(Z)V

    .line 1230
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraControls;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mLastViewId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraControls;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->currentLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/CameraControls;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CameraControls;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/CameraControls;->setProAFParam(IIZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/PopSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/CameraControls;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 86
    sput-boolean p0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/CameraControls;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/CameraControls;->setProSParam(IIZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/ArcProgressbar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/CameraControls;->setProgressbarStatus(Lcom/android/camera/ui/ArcProgressbar;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/CameraControls;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/CameraControls;->setProISOParam(IIZZ)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/CameraControls;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/CameraControls;->setProEVParam(IIZ)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/CameraControls;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/CameraControls;->setProWBParam(IIZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/ui/CameraControls;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    return-void
.end method

.method private adjustBackground()V
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/4 v3, 0x0

    .line 2583
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 2585
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2586
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationX(F)V

    .line 2587
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationY(F)V

    .line 2591
    sparse-switch v0, :sswitch_data_0

    .line 2601
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const v2, 0x7f0201cb

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2602
    return-void

    .line 2593
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 2596
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 2591
    nop

    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "orientation"    # I
    .param p7, "rotation"    # I
    .param p8, "result"    # Landroid/graphics/Rect;
    .param p9, "idx"    # I

    .prologue
    .line 1737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1738
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 1739
    .local v5, "tw":I
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v6, v7

    .line 1740
    .local v4, "th":I
    sparse-switch p7, :sswitch_data_0

    .line 1770
    :goto_0
    move-object/from16 v0, p8

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p8

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1771
    const/4 v6, -0x1

    move/from16 v0, p9

    if-eq v0, v6, :cond_0

    .line 1772
    div-int/lit8 v1, p7, 0x5a

    .line 1773
    .local v1, "idx1":I
    move/from16 v2, p9

    .line 1774
    .local v2, "idx2":I
    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v6, v6, v1

    move-object/from16 v0, p8

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    aput v7, v6, v2

    .line 1775
    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v6, v6, v1

    move-object/from16 v0, p8

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    aput v7, v6, v2

    .line 1777
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    :cond_0
    return-void

    .line 1743
    :sswitch_0
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1744
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1745
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, p5, v6

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 1746
    sub-int v6, p5, v4

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1750
    :sswitch_1
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, p4, v6

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1751
    sub-int v6, p4, v5

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1752
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 1753
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1757
    :sswitch_2
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1758
    add-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1759
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, p3

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 1760
    add-int v6, p3, v4

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1764
    :sswitch_3
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, p2

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1765
    add-int v6, p2, v5

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1766
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 1767
    add-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p8

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1740
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private center(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 2393
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2394
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v4, v5, v6

    .line 2395
    .local v4, "tw":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v3, v5, v6

    .line 2396
    .local v3, "th":I
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 2397
    .local v0, "cx":I
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 2398
    .local v1, "cy":I
    div-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v0

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    iget v9, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 2402
    return-void
.end method

.method private getMakeupParam()V
    .locals 3

    .prologue
    .line 2130
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 2131
    .local v0, "inflater":Lcom/android/camera/PreferenceInflater;
    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PreferenceGroup;

    .line 2132
    .local v1, "mPreGroup":Lcom/android/camera/PreferenceGroup;
    if-eqz v1, :cond_0

    .line 2133
    const-string v2, "pref_camera_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->mScenePreference:Lcom/android/camera/IconListPreference;

    .line 2135
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mScenePreference:Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_1

    .line 2136
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mScenePreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCurrentScene:Ljava/lang/String;

    .line 2138
    :cond_1
    return-void
.end method

.method private getProParamAngle(Ljava/lang/String;)F
    .locals 2
    .param p1, "angleName"    # Ljava/lang/String;

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 759
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method private getProParamLevel(Ljava/lang/String;I)I
    .locals 2
    .param p1, "proName"    # Ljava/lang/String;
    .param p2, "defaultLevel"    # I

    .prologue
    .line 748
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 749
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProParamText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "textName"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 773
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "Auto"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResetStatus(Ljava/lang/String;)Z
    .locals 2
    .param p1, "resetName"    # Ljava/lang/String;

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hideArcProgressBar()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1003
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_3

    .line 1013
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1015
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_4

    .line 1016
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1018
    :cond_4
    return-void
.end method

.method private initArcProgressBar(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->onCameraParameterReady()V

    .line 937
    const/4 v3, 0x0

    .line 938
    .local v3, "currentProLevel":I
    const/4 v4, 0x0

    .line 939
    .local v4, "currentAngle":F
    const-string v13, ""

    .line 941
    .local v13, "proText":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 944
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    .line 945
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v3

    .line 946
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraControls;->getProParamAngle(Ljava/lang/String;)F

    move-result v4

    .line 947
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_AF_RES_SMALL_IDS:[I

    array-length v2, v2

    sget-object v5, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/camera/ui/CameraControls;->ARC_AF_RES_SMALL_IDS:[I

    sget-object v7, Lcom/android/camera/ui/CameraControls;->ARC_AF_RES_BIG_IDS:[I

    sget-object v8, Lcom/android/camera/ui/CameraControls;->THUMB_RES_IDS:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sget-object v9, Lcom/android/camera/ui/CameraControls;->THUMB_PRESSED_RES_IDS:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-boolean v10, p0, Lcom/android/camera/ui/CameraControls;->isPicture:Z

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/ui/CameraControls;->mPro_af_text:Landroid/widget/TextView;

    .line 949
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 947
    invoke-virtual/range {v0 .. v12}, Lcom/android/camera/ui/ArcProgressbar;->resetResource(IIIFZ[I[IIIZ[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    .line 956
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v3

    .line 957
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraControls;->getProParamAngle(Ljava/lang/String;)F

    move-result v4

    .line 958
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    array-length v2, v2

    sget-object v5, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/camera/ui/CameraControls;->ARC_S_RES_BIG_IDS:[I

    sget-object v8, Lcom/android/camera/ui/CameraControls;->THUMB_RES_IDS:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    sget-object v9, Lcom/android/camera/ui/CameraControls;->THUMB_PRESSED_RES_IDS:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-boolean v10, p0, Lcom/android/camera/ui/CameraControls;->isPicture:Z

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    sget-object v11, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    .line 960
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 958
    invoke-virtual/range {v0 .. v12}, Lcom/android/camera/ui/ArcProgressbar;->resetResource(IIIFZ[I[IIIZ[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 966
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 967
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v3

    .line 968
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraControls;->getProParamAngle(Ljava/lang/String;)F

    move-result v4

    .line 969
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x3

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    array-length v2, v2

    sget-object v5, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/camera/ui/CameraControls;->ARC_ISO_RES_SMALL_IDS:[I

    sget-object v7, Lcom/android/camera/ui/CameraControls;->ARC_ISO_RES_BIG_IDS:[I

    sget-object v8, Lcom/android/camera/ui/CameraControls;->THUMB_RES_IDS:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    sget-object v9, Lcom/android/camera/ui/CameraControls;->THUMB_PRESSED_RES_IDS:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    iget-boolean v10, p0, Lcom/android/camera/ui/CameraControls;->isPicture:Z

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    .line 971
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 969
    invoke-virtual/range {v0 .. v12}, Lcom/android/camera/ui/ArcProgressbar;->resetResource(IIIFZ[I[IIIZ[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 977
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 978
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v3

    .line 979
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraControls;->getProParamAngle(Ljava/lang/String;)F

    move-result v4

    .line 980
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    sget-object v5, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/camera/ui/CameraControls;->ARC_EV_RES_BIG_IDS:[I

    sget-object v8, Lcom/android/camera/ui/CameraControls;->THUMB_RES_IDS:[I

    const/4 v9, 0x4

    aget v8, v8, v9

    sget-object v9, Lcom/android/camera/ui/CameraControls;->THUMB_PRESSED_RES_IDS:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    iget-boolean v10, p0, Lcom/android/camera/ui/CameraControls;->isPicture:Z

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_3
    sget-object v11, Lcom/android/camera/ui/CameraControls;->ARC_EV_RES_SMALL_IDS:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    .line 982
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 980
    invoke-virtual/range {v0 .. v12}, Lcom/android/camera/ui/ArcProgressbar;->resetResource(IIIFZ[I[IIIZ[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 988
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v3

    .line 990
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraControls;->getProParamAngle(Ljava/lang/String;)F

    move-result v4

    .line 991
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_WB_RES_SMALL_IDS:[I

    array-length v2, v2

    sget-object v5, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/android/camera/ui/CameraControls;->ARC_WB_RES_SMALL_IDS:[I

    sget-object v7, Lcom/android/camera/ui/CameraControls;->ARC_WB_RES_BIG_IDS:[I

    sget-object v8, Lcom/android/camera/ui/CameraControls;->THUMB_RES_IDS:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    sget-object v9, Lcom/android/camera/ui/CameraControls;->THUMB_PRESSED_RES_IDS:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    iget-boolean v10, p0, Lcom/android/camera/ui/CameraControls;->isPicture:Z

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    .line 993
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 991
    invoke-virtual/range {v0 .. v12}, Lcom/android/camera/ui/ArcProgressbar;->resetResource(IIIFZ[I[IIIZ[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initProButtonText()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1372
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->evStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1375
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->wbStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    :cond_3
    return-void
.end method

.method public static isAnimating()Z
    .locals 1

    .prologue
    .line 1237
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    return v0
.end method

.method private layoutRemaingPhotos()V
    .locals 14

    .prologue
    .line 2605
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2606
    .local v4, "rl":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2607
    .local v6, "rt":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2608
    .local v5, "rr":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2609
    .local v3, "rb":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    .line 2610
    .local v8, "w":I
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 2611
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2613
    .local v2, "m":I
    add-int v9, v4, v5

    div-int/lit8 v1, v9, 0x2

    .line 2614
    .local v1, "hc":I
    add-int v9, v6, v3

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v9, v2

    .line 2615
    .local v7, "vc":I
    iget v9, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_1

    .line 2616
    :cond_0
    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v7, v9

    .line 2618
    :cond_1
    div-int/lit8 v9, v8, 0x2

    if-ge v1, v9, :cond_2

    .line 2619
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    div-int/lit8 v11, v0, 0x2

    sub-int v11, v7, v11

    div-int/lit8 v12, v0, 0x2

    add-int/2addr v12, v7

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 2623
    :goto_0
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 2624
    return-void

    .line 2621
    :cond_2
    iget-object v9, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v1, v10

    div-int/lit8 v11, v0, 0x2

    sub-int v11, v7, v11

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v1

    div-int/lit8 v13, v0, 0x2

    add-int/2addr v13, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0
.end method

.method private layoutToast(Landroid/view/View;III)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I

    .prologue
    .line 1697
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 1698
    .local v13, "tw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1700
    .local v12, "th":I
    sparse-switch p4, :sswitch_data_0

    .line 1725
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p2, v0

    div-int/lit8 v9, v0, 0x4

    .line 1726
    .local v9, "l":I
    div-int/lit8 v0, p3, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 1727
    .local v7, "b":I
    add-int v10, v9, v13

    .line 1728
    .local v10, "r":I
    sub-int v11, v7, v12

    .line 1729
    .local v11, "t":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/4 v1, 0x0

    int-to-float v2, v12

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    int-to-float v4, v12

    const/4 v5, 0x0

    mul-int/lit8 v6, v12, 0x3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    .line 1732
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-virtual {v0, v9, v11, v10, v7}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->layout(IIII)V

    .line 1733
    return-void

    .line 1702
    .end local v7    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_0
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p3, v0

    int-to-double v0, v0

    sget v2, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 1703
    .local v8, "c":I
    div-int/lit8 v0, v12, 0x2

    sub-int v11, v8, v0

    .line 1704
    .restart local v11    # "t":I
    div-int/lit8 v0, v12, 0x2

    add-int v7, v8, v0

    .line 1705
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    mul-double/2addr v0, v2

    double-to-int v10, v0

    .line 1706
    .restart local v10    # "r":I
    sub-int v9, v10, v13

    .line 1707
    .restart local v9    # "l":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    int-to-float v1, v13

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v12, 0x2

    add-int/2addr v3, v13

    int-to-float v3, v3

    int-to-float v4, v12

    int-to-float v5, v13

    int-to-float v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 1710
    .end local v7    # "b":I
    .end local v8    # "c":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_1
    div-int/lit8 v0, p3, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v11, v0

    .line 1711
    .restart local v11    # "t":I
    add-int v7, v11, v12

    .line 1712
    .restart local v7    # "b":I
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p2, v0

    int-to-double v0, v0

    sget v2, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v10, v0

    .line 1713
    .restart local v10    # "r":I
    sub-int v9, v10, v13

    .line 1714
    .restart local v9    # "l":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    div-int/lit8 v1, v12, 0x2

    sub-int v1, v13, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v13

    neg-int v6, v12

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto :goto_0

    .line 1717
    .end local v7    # "b":I
    .end local v9    # "l":I
    .end local v10    # "r":I
    .end local v11    # "t":I
    :sswitch_2
    sget v0, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    div-int v0, p3, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 1718
    .restart local v8    # "c":I
    div-int/lit8 v0, v12, 0x2

    sub-int v11, v8, v0

    .line 1719
    .restart local v11    # "t":I
    div-int/lit8 v0, v12, 0x2

    add-int v7, v8, v0

    .line 1720
    .restart local v7    # "b":I
    div-int/lit8 v0, p2, 0x7

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v9, v0

    .line 1721
    .restart local v9    # "l":I
    add-int v10, v9, v13

    .line 1722
    .restart local v10    # "r":I
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    div-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    neg-int v5, v12

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setArrow(FFFFFF)V

    goto/16 :goto_0

    .line 1700
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private markVisibility()V
    .locals 2

    .prologue
    .line 1293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    .line 1294
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    :cond_0
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_1
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_3

    .line 1310
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1311
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1316
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1320
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1322
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1324
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 1326
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1328
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1331
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 1334
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 1336
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1339
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    :cond_d
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    if-eqz v0, :cond_e

    .line 1343
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    if-eqz v0, :cond_e

    .line 1351
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_e
    return-void
.end method

.method private resetLocation(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1780
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v1

    .line 1781
    .local v1, "rotation":I
    div-int/lit8 v0, v1, 0x5a

    .line 1782
    .local v0, "idx1":I
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_0

    .line 1783
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v6

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1789
    :cond_0
    sget-boolean v2, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v2, :cond_1

    .line 1790
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    sget v4, Lcom/android/camera/ui/CameraControls;->HDR_INDEX:I

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1793
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v2, :cond_2

    .line 1794
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xc

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1796
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v7

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1798
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x16

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PopSwitcher;->setX(F)V

    .line 1811
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v8

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1813
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v9

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1814
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1816
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x17

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1818
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xb

    aget v3, v3, v4

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1819
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1820
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1821
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xa

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1822
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1823
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 1825
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    aget-object v3, v3, v0

    aget v3, v3, v5

    sub-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1827
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_3

    .line 1828
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v6

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1834
    :cond_3
    sget-boolean v2, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v2, :cond_4

    .line 1835
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    sget v4, Lcom/android/camera/ui/CameraControls;->HDR_INDEX:I

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1838
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v2, :cond_5

    .line 1839
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xc

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1841
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v7

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1843
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x16

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PopSwitcher;->setY(F)V

    .line 1856
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v8

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1858
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v9

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1859
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1861
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x17

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1863
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xb

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1864
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1865
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1866
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0xa

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1867
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1868
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1870
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    aget-object v3, v3, v0

    aget v3, v3, v5

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1872
    return-void
.end method

.method private resetSingleParam(ZZI)V
    .locals 1
    .param p1, "isProReset"    # Z
    .param p2, "isSingle"    # Z
    .param p3, "type"    # I

    .prologue
    .line 1102
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1103
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/android/camera/ui/CameraControls;->setResetStatus(IZ)V

    .line 1104
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_RESET_DISPLAY:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-direct {p0, p3, v0}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 1105
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v0, v0, p3

    invoke-direct {p0, p3, v0}, Lcom/android/camera/ui/CameraControls;->setProParamLevel(II)V

    .line 1106
    invoke-direct {p0, p3}, Lcom/android/camera/ui/CameraControls;->setProMenuText(I)V

    .line 1108
    :cond_1
    return-void
.end method

.method private saveProParam(IIF)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "currentLevel"    # I
    .param p3, "currentAngle"    # F

    .prologue
    .line 740
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 741
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 742
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 743
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_ANGLE_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 744
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 745
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    return-void
.end method

.method private setLocation(II)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1540
    sget v0, Lcom/android/camera/CameraSettings;->currentCameraId:I

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraId:I

    .line 1541
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1547
    .local v8, "user":I
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ui/CameraControls;->BOKEH_SWITCHER_INVISBLE:Z

    .line 1549
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v4

    .line 1550
    .local v4, "rotation":I
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitchWidth:I

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitchWidthPx:I

    .line 1551
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraSwitch:I

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraSwitchPx:I

    .line 1552
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidthPx:I

    .line 1553
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewVideoWidth:I

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewVideoWidthPx:I

    .line 1554
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewLeft:I

    .line 1556
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcherWidth:I

    .line 1557
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackWidth:I

    .line 1558
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidthX:I

    .line 1559
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterWidthX:I

    .line 1560
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    .line 1562
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->muteLeftWidth:I

    .line 1563
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->menuRightWidth:I

    .line 1568
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->menuLeftWidth:I

    .line 1571
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraControls;->modeDetectHeight:I

    .line 1573
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1574
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->BOKEH_SWITCHER_INVISBLE:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1575
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1584
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mPhotoMoudle:Z

    if-eqz v0, :cond_7

    .line 1585
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->BOKEH_SWITCHER_INVISBLE:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1586
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1605
    :goto_1
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_9

    .line 1606
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_1

    .line 1607
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1609
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x16

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1610
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcherWidth:I

    sub-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1611
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackWidth:I

    sub-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1612
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterWidthX:I

    add-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1622
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/16 v7, 0x8

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1623
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewWidthX:I

    sub-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1637
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1639
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->isRecoding:Z

    if-eqz v0, :cond_c

    .line 1640
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_b

    .line 1641
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1642
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x17

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1644
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoPause:Lcom/android/camera/PauseButton;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcherWidth:I

    sub-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x18

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1646
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    :goto_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1663
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/16 v7, 0x8

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1670
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_2

    .line 1671
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/ui/CameraControls;->HDR_INDEX:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1675
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1676
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/16 v7, 0xd

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1677
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/16 v7, 0xe

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1678
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/16 v7, 0xf

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1679
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    if-eqz v0, :cond_d

    .line 1680
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/16 v7, 0x13

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1681
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/16 v7, 0x10

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1682
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/16 v7, 0x11

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1683
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/16 v7, 0x12

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1691
    :goto_4
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mModeDetectSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->modeDetectHeight:I

    sub-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x19

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1693
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    invoke-direct {p0, v0, p1, p2, v4}, Lcom/android/camera/ui/CameraControls;->layoutToast(Landroid/view/View;III)V

    .line 1694
    return-void

    .line 1577
    :cond_3
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_4

    .line 1578
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_0

    .line 1580
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_0

    .line 1588
    :cond_5
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_6

    .line 1589
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_1

    .line 1591
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_1

    .line 1595
    :cond_7
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_8

    .line 1596
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->menuRightWidth:I

    add-int v2, p1, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_1

    .line 1599
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->menuLeftWidth:I

    add-int v2, p1, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_1

    .line 1614
    :cond_9
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_a

    .line 1615
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1617
    :cond_a
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x16

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1618
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcherWidth:I

    sub-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1619
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1620
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x3

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_2

    .line 1648
    :cond_b
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1649
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x17

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1651
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoPause:Lcom/android/camera/PauseButton;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcherWidth:I

    sub-int v2, p1, v0

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x18

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1653
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1656
    :cond_c
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1657
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x17

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1658
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1685
    :cond_d
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/16 v7, 0x10

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1686
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/16 v7, 0x11

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    .line 1687
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/CameraControls;->proHeightY:I

    add-int v3, p2, v0

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/16 v7, 0x12

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/CameraControls;->toIndex(Landroid/view/View;IIIIII)V

    goto/16 :goto_4
.end method

.method private setProAFParam(IIZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "currentLevel"    # I
    .param p3, "inReset"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_AF_PARAM:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 569
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_af_text:Landroid/widget/TextView;

    const-string v1, "MF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const/4 v0, 0x1

    const-string v1, "MF"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FOCUS_MODE_MANUAL_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "manual-focus-pos-type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "manual-focus-position"

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_AF_PARAM:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 577
    :cond_0
    return-void
.end method

.method private setProEVParam(IIZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "currentLevel"    # I
    .param p3, "mHandler"    # Z

    .prologue
    const/4 v4, 0x3

    .line 603
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 605
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_EV_RES_SMALL_IDS:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const/4 v1, 0x4

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_EV_RES_SMALL_IDS:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 608
    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    aget-object v1, v1, p2

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->evStr:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 610
    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 611
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 612
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 614
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->sDefaultText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->isoDefaultText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 615
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0477

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/CameraControls;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 617
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "continuous-iso"

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0310

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    .line 620
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 622
    const/4 v1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/android/camera/ui/CameraControls;->setResetStatus(IZ)V

    .line 623
    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v1, v1, v4

    invoke-direct {p0, v4, v1}, Lcom/android/camera/ui/CameraControls;->setProParamLevel(II)V

    .line 624
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "continuous-iso"

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    iget v4, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 629
    :cond_1
    return-void
.end method

.method private setProISOParam(IIZZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "currentLevel"    # I
    .param p3, "mHandler"    # Z
    .param p4, "inReset"    # Z

    .prologue
    const/4 v3, 0x4

    .line 631
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 633
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM_TEXT:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const/4 v0, 0x3

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM_TEXT:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 636
    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM_TEXT:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-iso"

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->sDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->evDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0478

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/CameraControls;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->evDeafultIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->evDeafultIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->evDeafultIndex:I

    aget-object v0, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 648
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/camera/ui/CameraControls;->setResetStatus(IZ)V

    .line 649
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v0, v0, v3

    invoke-direct {p0, v3, v0}, Lcom/android/camera/ui/CameraControls;->setProParamLevel(II)V

    .line 650
    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->evDeafultIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->evStr:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->evDeafultIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 654
    :cond_1
    return-void
.end method

.method private setProMenuText(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 794
    packed-switch p1, :pswitch_data_0

    .line 825
    :goto_0
    return-void

    .line 797
    :pswitch_0
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/camera/ui/CameraControls;->getProParamText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "afText":Ljava/lang/String;
    const-string v2, "Auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_RESET_DISPLAY:[Ljava/lang/String;

    aget-object v0, v2, v3

    .line 801
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_af_text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 805
    .end local v0    # "afText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/camera/ui/CameraControls;->getProParamText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 808
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/camera/ui/CameraControls;->getProParamText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 812
    :pswitch_3
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/android/camera/ui/CameraControls;->getProParamText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "evText":Ljava/lang/String;
    const-string v2, "Auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_RESET_DISPLAY:[Ljava/lang/String;

    aget-object v1, v2, v4

    .line 816
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 820
    .end local v1    # "evText":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/camera/ui/CameraControls;->getProParamText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setProParamLevel(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "level"    # I

    .prologue
    .line 752
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 753
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 754
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 756
    return-void
.end method

.method private setProParamText(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 776
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 777
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 778
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 779
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 780
    return-void
.end method

.method private setProSParam(IIZZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "currentLevel"    # I
    .param p3, "mHandler"    # Z
    .param p4, "inReset"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 581
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const/4 v0, 0x2

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 584
    sget-object v0, Lcom/android/camera/ui/CameraControls;->ARC_S_PARAM:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, v5}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 586
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "exposure-time"

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_S_RES_SMALL_IDS:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->evDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0477

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/CameraControls;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 592
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v1, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-iso"

    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_ISO_PARAM:[Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->isoDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->isoDefaultText:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 597
    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/CameraControls;->setResetStatus(IZ)V

    .line 598
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v0, v0, v4

    invoke-direct {p0, v4, v0}, Lcom/android/camera/ui/CameraControls;->setProParamLevel(II)V

    .line 601
    :cond_1
    return-void
.end method

.method private setProWBParam(IIZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "currentLevel"    # I
    .param p3, "inReset"    # Z

    .prologue
    .line 656
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 658
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_0

    .line 659
    const/4 v0, 0x0

    .line 661
    .local v0, "currentIndex":I
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    .line 662
    add-int/lit8 v0, p2, 0x1

    .line 667
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    const/4 v2, 0x5

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/CameraControls;->setProParamText(ILjava/lang/String;)V

    .line 670
    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

    aget-object v2, v2, p2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->wbStr:Ljava/lang/String;

    .line 671
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 672
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM_DISPLAY:[Ljava/lang/String;

    aget-object v2, v2, p2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->wbStr:Ljava/lang/String;

    .line 674
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_WB_PARAM:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 678
    .end local v0    # "currentIndex":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 664
    .restart local v0    # "currentIndex":I
    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private setProgressbarStatus(Lcom/android/camera/ui/ArcProgressbar;I)V
    .locals 1
    .param p1, "mArcProgressbar"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p2, "proIndex"    # I

    .prologue
    .line 1128
    invoke-virtual {p1}, Lcom/android/camera/ui/ArcProgressbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1134
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/CameraControls;->showArcProgressBar(I)V

    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setResetStatus(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "bool"    # Z

    .prologue
    .line 766
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 767
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 768
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 770
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 682
    sget-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 683
    sget-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 686
    :cond_0
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    .line 687
    sget-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 688
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040044

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 689
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 690
    .local v0, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    sget-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 692
    sget-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 693
    sget-object v2, Lcom/android/camera/ui/CameraControls;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 694
    return-void
.end method

.method private showArcProgressBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1020
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1025
    return-void
.end method

.method private toIndex(Landroid/view/View;IIIIII)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I
    .param p5, "index"    # I
    .param p6, "index2"    # I
    .param p7, "index3"    # I

    .prologue
    .line 2405
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 2406
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 2407
    .local v16, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 2408
    .local v15, "th":I
    const/4 v11, 0x0

    .local v11, "l":I
    const/4 v13, 0x0

    .local v13, "r":I
    const/4 v14, 0x0

    .local v14, "t":I
    const/4 v2, 0x0

    .line 2411
    .local v2, "b":I
    const/16 v19, 0x5

    move/from16 v0, p6

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 2412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 2413
    const/16 v19, 0x7

    sput v19, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 2432
    :goto_0
    sget v18, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 2433
    .local v18, "wnumber":I
    const/4 v8, 0x7

    .line 2434
    .local v8, "hnumber":I
    const/16 v17, 0x0

    .line 2435
    .local v17, "windex":I
    const/4 v7, 0x0

    .line 2436
    .local v7, "hindex":I
    sparse-switch p4, :sswitch_data_0

    .line 2466
    :goto_1
    div-int v3, p3, v8

    .line 2467
    .local v3, "boxh":I
    div-int v4, p2, v18

    .line 2468
    .local v4, "boxw":I
    mul-int/lit8 v19, v17, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v4

    div-int/lit8 v5, v19, 0x2

    .line 2469
    .local v5, "cx":I
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v3

    div-int/lit8 v6, v19, 0x2

    .line 2471
    .local v6, "cy":I
    if-nez p6, :cond_0

    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v19, :cond_0

    .line 2472
    sparse-switch p4, :sswitch_data_1

    .line 2483
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v6, v19, 0x2

    .line 2488
    :cond_0
    :goto_2
    div-int/lit8 v19, v16, 0x2

    sub-int v11, v5, v19

    .line 2489
    div-int/lit8 v19, v16, 0x2

    add-int v13, v5, v19

    .line 2490
    div-int/lit8 v19, v15, 0x2

    sub-int v14, v6, v19

    .line 2491
    div-int/lit8 v19, v15, 0x2

    add-int v2, v6, v19

    .line 2493
    const/16 v19, -0x1

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 2494
    div-int/lit8 v9, p4, 0x5a

    .line 2495
    .local v9, "idx1":I
    move/from16 v10, p7

    .line 2496
    .local v10, "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/CameraControls;->mLocX:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    int-to-float v0, v11

    move/from16 v20, v0

    aput v20, v19, v10

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/CameraControls;->mLocY:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v19, v10

    .line 2499
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v13, v2}, Landroid/view/View;->layout(IIII)V

    .line 2500
    return-void

    .line 2415
    .end local v3    # "boxh":I
    .end local v4    # "boxw":I
    .end local v5    # "cx":I
    .end local v6    # "cy":I
    .end local v7    # "hindex":I
    .end local v8    # "hnumber":I
    .end local v17    # "windex":I
    .end local v18    # "wnumber":I
    :cond_2
    const/16 v19, 0x6

    sput v19, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    goto :goto_0

    .line 2417
    :cond_3
    sget-boolean v19, Lcom/android/camera/ui/CameraControls;->BOKEH_SWITCHER_INVISBLE:Z

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/CameraControls;->mCameraId:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-nez p6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/CameraControls;->mPhotoMoudle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2418
    sget-boolean v19, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v19, :cond_4

    .line 2419
    const/16 v19, 0x5

    sput v19, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    goto/16 :goto_0

    .line 2421
    :cond_4
    const/16 v19, 0x4

    sput v19, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    goto/16 :goto_0

    .line 2424
    :cond_5
    sget-boolean v19, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v19, :cond_6

    .line 2425
    const/16 v19, 0x6

    sput v19, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    goto/16 :goto_0

    .line 2427
    :cond_6
    const/16 v19, 0x5

    sput v19, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    goto/16 :goto_0

    .line 2439
    .restart local v7    # "hindex":I
    .restart local v8    # "hnumber":I
    .restart local v17    # "windex":I
    .restart local v18    # "wnumber":I
    :sswitch_0
    sget v18, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 2440
    const/4 v8, 0x7

    .line 2441
    move/from16 v17, p5

    .line 2442
    move/from16 v7, p6

    .line 2443
    goto/16 :goto_1

    .line 2446
    :sswitch_1
    const/16 v18, 0x7

    .line 2447
    sget v8, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 2448
    move/from16 v17, p6

    .line 2449
    sub-int v19, v8, p5

    add-int/lit8 v7, v19, -0x1

    .line 2450
    goto/16 :goto_1

    .line 2453
    :sswitch_2
    sget v18, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 2454
    const/4 v8, 0x7

    .line 2455
    sub-int v19, v18, p5

    add-int/lit8 v17, v19, -0x1

    .line 2456
    sub-int v19, v8, p6

    add-int/lit8 v7, v19, -0x1

    .line 2457
    goto/16 :goto_1

    .line 2460
    :sswitch_3
    const/16 v18, 0x7

    .line 2461
    sget v8, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 2462
    sub-int v19, v18, p6

    add-int/lit8 v17, v19, -0x1

    .line 2463
    move/from16 v7, p5

    goto/16 :goto_1

    .line 2474
    .restart local v3    # "boxh":I
    .restart local v4    # "boxw":I
    .restart local v5    # "cx":I
    .restart local v6    # "cy":I
    :sswitch_4
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v5, v19, 0x2

    .line 2475
    goto/16 :goto_2

    .line 2477
    :sswitch_5
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v19, v19, 0x2

    sub-int v6, p3, v19

    .line 2478
    goto/16 :goto_2

    .line 2480
    :sswitch_6
    sget v19, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    div-int/lit8 v19, v19, 0x2

    sub-int v5, p2, v19

    .line 2481
    goto/16 :goto_2

    .line 2436
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 2472
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_4
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_6
    .end sparse-switch
.end method

.method private toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 2503
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2504
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 2505
    .local v8, "tw":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 2506
    .local v7, "th":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 2507
    .local v1, "cx":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 2508
    .local v2, "cy":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 2509
    .local v0, "b":I
    sparse-switch p3, :sswitch_data_0

    .line 2541
    :goto_0
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 2542
    return-void

    .line 2513
    :sswitch_0
    iget v9, p2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2514
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v5, v9, v10

    .line 2516
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2517
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 2518
    goto :goto_0

    .line 2521
    :sswitch_1
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2522
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2523
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2524
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 2525
    goto :goto_0

    .line 2528
    :sswitch_2
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2529
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2530
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2531
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 2532
    goto :goto_0

    .line 2535
    :sswitch_3
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2536
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2537
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2538
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    goto :goto_0

    .line 2509
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private toRight(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .prologue
    .line 2545
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2546
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 2547
    .local v8, "tw":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v7, v9, v10

    .line 2548
    .local v7, "th":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 2549
    .local v1, "cx":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 2550
    .local v2, "cy":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 2551
    .local v0, "b":I
    sparse-switch p3, :sswitch_data_0

    .line 2579
    :goto_0
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 2580
    return-void

    .line 2554
    :sswitch_0
    iget v9, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v3, v9, v10

    .line 2555
    iget v9, p2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2557
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2558
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 2559
    goto :goto_0

    .line 2561
    :sswitch_1
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2562
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2563
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2564
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 2565
    goto :goto_0

    .line 2567
    :sswitch_2
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2568
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2569
    div-int/lit8 v9, v7, 0x2

    sub-int v9, v2, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2570
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    .line 2571
    goto :goto_0

    .line 2573
    :sswitch_3
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v1, v9

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v3, v9, v10

    .line 2574
    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v5, v9, v10

    .line 2575
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v6, v9, v10

    .line 2576
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v9, v10

    goto :goto_0

    .line 2551
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public enableTouch(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1241
    if-eqz p1, :cond_3

    .line 1242
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1243
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1244
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1245
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1246
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1248
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1250
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1251
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1252
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1259
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1263
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 1271
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1272
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModuleSwitcher;->enableTouch(Z)V

    .line 1273
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1274
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1276
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1279
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1280
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_4

    .line 1285
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_5

    .line 1286
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1288
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1290
    return-void
.end method

.method public getPanoramaExitButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    return-object v0
.end method

.method public getProParam()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 783
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    if-nez v0, :cond_1

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->onCameraParameterReady()V

    .line 787
    :cond_1
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/ui/CameraControls;->setProAFParam(IIZ)V

    .line 788
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v3, v0, v6, v1}, Lcom/android/camera/ui/CameraControls;->setProSParam(IIZZ)V

    .line 789
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v1, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v4, v0, v6, v1}, Lcom/android/camera/ui/CameraControls;->setProISOParam(IIZZ)V

    .line 790
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1, v6}, Lcom/android/camera/ui/CameraControls;->setProEVParam(IIZ)V

    .line 791
    sget-object v0, Lcom/android/camera/ui/CameraControls;->PRO_LEVEL_KEY:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_DEFAULT_LEVEL_KEY:[I

    aget v1, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraControls;->getProParamLevel(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-direct {p0, v1}, Lcom/android/camera/ui/CameraControls;->getResetStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/camera/ui/CameraControls;->setProWBParam(IIZ)V

    .line 792
    return-void
.end method

.method public hideCameraSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2711
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2712
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2719
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 2720
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2723
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 2724
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2726
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2728
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    .line 2730
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2732
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 2734
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2735
    return-void
.end method

.method public hidePreviewThumbnail()V
    .locals 2

    .prologue
    .line 2841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideThumbnail:Z

    .line 2842
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2843
    return-void
.end method

.method public hideProMenu()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2764
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->hideArcProgressBar()V

    .line 2765
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2766
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2767
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2768
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2769
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2770
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2772
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2776
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    .line 2777
    return-void
.end method

.method public hideRemainingPhotoCnt()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 2829
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2830
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2831
    return-void
.end method

.method public hideUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    .line 1916
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    if-nez v1, :cond_0

    .line 1917
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 1918
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 1919
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 1920
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1921
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_1

    .line 1922
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1928
    :cond_1
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v1, :cond_2

    .line 1929
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1932
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_3

    .line 1933
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1935
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1936
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1937
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1938
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1939
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1940
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1941
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1943
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1946
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1948
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1949
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1950
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1951
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->outlistener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1953
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->popInvisible()V

    .line 1954
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->popInvisible()V

    .line 1956
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v1, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->removePopup()V

    .line 1957
    invoke-direct {p0, v3, v3}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 1959
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    .line 1961
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->markVisibility()V

    .line 1962
    sparse-switch v0, :sswitch_data_0

    .line 2121
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2122
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 2124
    sput-boolean v6, Lcom/android/camera/TsMakeupManager;->is_makeup_shown:Z

    .line 2126
    return-void

    .line 1965
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1967
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_4

    .line 1968
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1974
    :cond_4
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v1, :cond_5

    .line 1975
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1979
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1982
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_6

    .line 1983
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1985
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1988
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1990
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1991
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1993
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1995
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1997
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1998
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1999
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2000
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2001
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 2005
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2007
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_7

    .line 2008
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2014
    :cond_7
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v1, :cond_8

    .line 2015
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2018
    :cond_8
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_9

    .line 2019
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2021
    :cond_9
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2023
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2027
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2029
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2030
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2032
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2034
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2036
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2037
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2038
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2039
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2040
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 2044
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2046
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_a

    .line 2047
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2053
    :cond_a
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v1, :cond_b

    .line 2054
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2057
    :cond_b
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_c

    .line 2058
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2060
    :cond_c
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2062
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2066
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2068
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2069
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2071
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2073
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2075
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2076
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2077
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2078
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2079
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 2083
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2085
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_d

    .line 2086
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2093
    :cond_d
    sget-boolean v1, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v1, :cond_e

    .line 2094
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2096
    :cond_e
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v1, :cond_f

    .line 2097
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2099
    :cond_f
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2101
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2105
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2107
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2108
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2110
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2112
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2114
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2115
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2116
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2117
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2118
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 1962
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public onArcProgressBarChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramFloat"    # I

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 705
    iget v1, p0, Lcom/android/camera/ui/CameraControls;->currentLevel:I

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/camera/ui/CameraControls;->currentLevel:I

    .line 706
    :cond_0
    iput p2, p0, Lcom/android/camera/ui/CameraControls;->currentLevel:I

    .line 708
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    .line 710
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 712
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 713
    return-void
.end method

.method public onArcProgressTouchDown(Landroid/view/View;I)V
    .locals 4
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramFloat"    # I

    .prologue
    const/16 v3, 0x64

    .line 716
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    return-void
.end method

.method public onArcProgressTouchUp(Landroid/view/View;IIFZ)V
    .locals 4
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "mType"    # I
    .param p3, "paramFloat"    # I
    .param p4, "currentAngle"    # F
    .param p5, "isSingleAuto"    # Z

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 722
    iput p3, p0, Lcom/android/camera/ui/CameraControls;->currentLevel:I

    .line 724
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/ui/CameraControls;->saveProParam(IIF)V

    .line 726
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    .line 728
    if-eqz p5, :cond_0

    .line 729
    invoke-virtual {p0, v2, p5, p2}, Lcom/android/camera/ui/CameraControls;->resetProParam(ZZI)V

    .line 736
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCameraParameterReady()V
    .locals 3

    .prologue
    .line 918
    const-string v1, "CAM_Controls"

    const-string v2, "onCameraParameterReady()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v0, Lcom/android/camera/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 920
    .local v0, "inflater":Lcom/android/camera/PreferenceInflater;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 921
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mAFPreference:Lcom/android/camera/ListPreference;

    if-nez v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_manual_focus_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mAFPreference:Lcom/android/camera/ListPreference;

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSPreference:Lcom/android/camera/ListPreference;

    if-nez v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_manual_exp_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mSPreference:Lcom/android/camera/ListPreference;

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_2

    .line 926
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_iso_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    .line 927
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_3

    .line 928
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_exposure_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    .line 929
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    if-nez v1, :cond_4

    .line 930
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_whitebalance_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    .line 933
    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1514
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v9

    .line 1516
    .local v9, "rotation":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .local v10, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 1517
    .local v8, "h":I
    sparse-switch v9, :sswitch_data_0

    .line 1531
    int-to-float v3, v10

    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1532
    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1536
    .end local v8    # "h":I
    .end local v9    # "rotation":I
    .end local v10    # "w":I
    :cond_0
    :goto_0
    return-void

    .line 1519
    .restart local v8    # "h":I
    .restart local v9    # "rotation":I
    .restart local v10    # "w":I
    :sswitch_0
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1520
    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v5, v10

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1523
    :sswitch_1
    int-to-float v3, v10

    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1524
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1527
    :sswitch_2
    sget v0, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1528
    sget v0, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v5, v10

    int-to-float v6, v8

    iget-object v7, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1517
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1381
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 1382
    const v0, 0x7f0d0033

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    .line 1383
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    .line 1384
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    .line 1385
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    .line 1386
    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    .line 1387
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1388
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    .line 1394
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 1395
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    .line 1398
    :cond_1
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    .line 1399
    const v0, 0x7f0d0034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    .line 1400
    const v0, 0x7f0d0035

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    .line 1402
    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PauseButton;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoPause:Lcom/android/camera/PauseButton;

    .line 1405
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    .line 1407
    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    .line 1408
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    .line 1410
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    .line 1411
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    .line 1413
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopSwitcher;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    .line 1416
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ArcProgressbar;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    .line 1417
    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ArcProgressbar;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    .line 1418
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ArcProgressbar;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    .line 1419
    const v0, 0x7f0d0042

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ArcProgressbar;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    .line 1420
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ArcProgressbar;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    .line 1421
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    .line 1422
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    .line 1423
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_af_text:Landroid/widget/TextView;

    .line 1424
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    .line 1425
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    .line 1426
    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    .line 1427
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    .line 1428
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    .line 1429
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    .line 1430
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    .line 1431
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    .line 1432
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    .line 1434
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    if-nez v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 1439
    :cond_2
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    .line 1440
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    .line 1441
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    .line 1444
    const v0, 0x7f0d0061

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraControls;->mModeDetectSwitcher:Landroid/view/View;

    .line 1446
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->initProButtonText()V

    .line 1447
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 1448
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    .line 1449
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->hideArcProgressBar()V

    .line 1450
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ArcProgressbar;->setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V

    .line 1451
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ArcProgressbar;->setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V

    .line 1452
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ArcProgressbar;->setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V

    .line 1453
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ArcProgressbar;->setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V

    .line 1454
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ArcProgressbar;->setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V

    .line 1455
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ArcProgressbar;->setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V

    .line 1456
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    new-instance v1, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1457
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    new-instance v1, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1458
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    new-instance v1, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    new-instance v1, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    new-instance v1, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    new-instance v1, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v11, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1470
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/CameraControls;->LAYOUT_SWITCH_HEIGHT_DEVIATION:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/CameraControls;->currentWidthPx:I

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 1474
    .local v26, "size":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v12

    .line 1475
    .local v12, "rotation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->adjustBackground()V

    .line 1478
    sub-int p4, p4, p2

    .line 1479
    sub-int p5, p5, p3

    .line 1480
    const/16 p2, 0x0

    .line 1481
    const/16 p3, 0x0

    .line 1482
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->getChildCount()I

    move-result v5

    move/from16 v0, v24

    if-ge v0, v5, :cond_0

    .line 1483
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 1484
    .local v27, "v":Landroid/view/View;
    move-object/from16 v0, v27

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1482
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 1486
    .end local v27    # "v":Landroid/view/View;
    :cond_0
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1488
    .local v13, "shutter":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/CameraControls;->height_deviation_px:I

    sub-int v10, p5, v5

    const/4 v14, 0x6

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V

    .line 1490
    iget v5, v13, Landroid/graphics/Rect;->right:I

    iget v6, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v13, Landroid/graphics/Rect;->bottom:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/ui/CameraControls;->mSize:I

    .line 1491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    const/16 v23, -0x1

    move-object/from16 v14, p0

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-direct/range {v14 .. v23}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;IIIIIILandroid/graphics/Rect;I)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mBackgroundView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    sub-int v5, p4, p2

    sub-int v6, p5, p3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/camera/ui/CameraControls;->setLocation(II)V

    .line 1495
    const v5, 0x7f0d00df

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1496
    .local v25, "retake":Landroid/view/View;
    if-eqz v25, :cond_1

    .line 1497
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    .line 1498
    const v5, 0x7f0d00e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    .line 1499
    const v5, 0x7f0d00de

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/CameraControls;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    .line 1501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/android/camera/ui/CameraControls;->center(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/android/camera/ui/CameraControls;->toLeft(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v12}, Lcom/android/camera/ui/CameraControls;->toRight(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1509
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraControls;->layoutRemaingPhotos()V

    .line 1510
    return-void

    .line 1505
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    .line 1506
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    .line 1507
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1203
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotatableLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1193
    :pswitch_0
    const-string v0, "CAM_Controls"

    const-string v1, "onTouchEvent_ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->hideArcProgressBar()V

    goto :goto_0

    .line 1197
    :pswitch_1
    const-string v0, "CAM_Controls"

    const-string v1, "onTouchEvent_ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1200
    :pswitch_2
    const-string v0, "CAM_Controls"

    const-string v1, "onTouchEvent_ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeFromViewList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1362
    :cond_0
    return-void
.end method

.method public resetProParam(ZZI)V
    .locals 9
    .param p1, "isProReset"    # Z
    .param p2, "isSingleReset"    # Z
    .param p3, "mResetType"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 1030
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    if-nez v2, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->onCameraParameterReady()V

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_2

    .line 1095
    :goto_0
    return-void

    .line 1038
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0101

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "defaultEffect":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "currentEffect":Ljava/lang/String;
    if-eqz v0, :cond_12

    move v2, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 1041
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1044
    :cond_3
    if-eqz p3, :cond_4

    if-ne p3, v3, :cond_5

    .line 1045
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_af_text:Landroid/widget/TextView;

    const-string v5, "AF"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "continuous-picture"

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/CameraControls;->resetSingleParam(ZZI)V

    .line 1049
    :cond_5
    if-eqz p3, :cond_6

    if-ne p3, v6, :cond_7

    .line 1051
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "exposure-time"

    const-string v5, "0"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_s_text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v5, 0x7f0e030f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v3, 0x7f0e030f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->sStr:Ljava/lang/String;

    .line 1055
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1056
    invoke-direct {p0, p1, p2, v6}, Lcom/android/camera/ui/CameraControls;->resetSingleParam(ZZI)V

    .line 1058
    :cond_7
    if-eqz p3, :cond_8

    if-ne p3, v7, :cond_a

    .line 1059
    :cond_8
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 1060
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_9

    .line 1061
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mISOPreference:Lcom/android/camera/IconListPreference;

    iget v3, p0, Lcom/android/camera/ui/CameraControls;->isoDeafultIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1063
    :cond_9
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "exposure-time"

    const-string v5, "0"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_iso_text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0310

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0310

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->isoStr:Ljava/lang/String;

    .line 1066
    invoke-direct {p0, p1, p2, v7}, Lcom/android/camera/ui/CameraControls;->resetSingleParam(ZZI)V

    .line 1068
    :cond_a
    if-eqz p3, :cond_b

    if-ne p3, v8, :cond_d

    .line 1069
    :cond_b
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1070
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_c

    .line 1071
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mEVPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, v6}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1072
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_ev_text:Landroid/widget/TextView;

    sget-object v3, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    sget-object v2, Lcom/android/camera/ui/CameraControls;->ARC_EV_PARAM:[Ljava/lang/String;

    aget-object v2, v2, v6

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->evStr:Ljava/lang/String;

    .line 1075
    :cond_c
    invoke-direct {p0, p1, p2, v8}, Lcom/android/camera/ui/CameraControls;->resetSingleParam(ZZI)V

    .line 1077
    :cond_d
    if-eqz p3, :cond_e

    const/4 v2, 0x5

    if-ne p3, v2, :cond_10

    .line 1078
    :cond_e
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1079
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_f

    .line 1080
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mWBPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, v6}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 1081
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mPro_wb_text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0312

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraControls;->wbStr:Ljava/lang/String;

    .line 1084
    :cond_f
    const/4 v2, 0x5

    invoke-direct {p0, p1, p2, v2}, Lcom/android/camera/ui/CameraControls;->resetSingleParam(ZZI)V

    .line 1086
    :cond_10
    iget-object v2, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1088
    if-nez p2, :cond_11

    .line 1089
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->hideArcProgressBar()V

    .line 1091
    :cond_11
    iput-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->isReset:Z

    .line 1093
    iput-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    goto/16 :goto_0

    :cond_12
    move v2, v4

    .line 1040
    goto/16 :goto_1

    :cond_13
    move v5, v4

    goto/16 :goto_2
.end method

.method public setBokehMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x6

    .line 1899
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    .line 1900
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1901
    sput v1, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 1908
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->requestLayout()V

    .line 1909
    return-void

    .line 1904
    :cond_0
    sput v1, Lcom/android/camera/ui/CameraControls;->WIDTH_GRID:I

    .line 1906
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "mCameraDev"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 700
    return-void
.end method

.method public setCameraDevicePara(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "mPara"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 697
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentMode"    # Ljava/lang/String;

    .prologue
    .line 2760
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls;->mCurrentMode:Ljava/lang/String;

    .line 2761
    return-void
.end method

.method public setMargins(II)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 2647
    sput p1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    .line 2648
    sput p2, Lcom/android/camera/ui/CameraControls;->mBottomMargin:I

    .line 2649
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2682
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mOrientation:I

    .line 2683
    const/16 v5, 0x13

    new-array v2, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    aput-object v5, v2, v7

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    aput-object v5, v2, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    aput-object v5, v2, v9

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    aput-object v5, v2, v10

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    aput-object v6, v2, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    aput-object v6, v2, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mModeDetectSwitcher:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mReviewRetakeButton:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0xf

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mVideoPause:Lcom/android/camera/PauseButton;

    aput-object v6, v2, v5

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mReviewCancelButton:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0x11

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mReviewDoneButton:Landroid/view/View;

    aput-object v6, v2, v5

    const/16 v5, 0x12

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    aput-object v6, v2, v5

    .line 2693
    .local v2, "views":[Landroid/view/View;
    const/4 v5, 0x7

    new-array v3, v5, [Lcom/android/camera/ui/RotateLayout;

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v8

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v9

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v10

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    .line 2697
    .local v3, "viewsLayout":[Lcom/android/camera/ui/RotateLayout;
    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 2698
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2699
    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 2697
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2703
    :cond_1
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 2704
    .local v0, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 2703
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2707
    .end local v0    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->layoutRemaingPhotos()V

    .line 2708
    return-void
.end method

.method public setPhotoMode(Z)V
    .locals 0
    .param p1, "isPhotoMoudle"    # Z

    .prologue
    .line 1912
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraControls;->mPhotoMoudle:Z

    .line 1913
    return-void
.end method

.method public setPreviewRatio(FZ)V
    .locals 5
    .param p1, "ratio"    # F
    .param p2, "panorama"    # Z

    .prologue
    const v4, 0x7f0a002b

    const/16 v3, 0xe6

    .line 2652
    if-eqz p2, :cond_0

    .line 2653
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2671
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->invalidate()V

    .line 2672
    return-void

    .line 2655
    :cond_0
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v0

    .line 2656
    .local v0, "r":I
    iput v0, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    .line 2659
    iget v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/camera/ui/CameraControls;->mTopMargin:I

    if-eqz v1, :cond_1

    .line 2660
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2661
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 2662
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/camera/ui/CameraControls;->mPreviewRatio:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2663
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2665
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2666
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setProMenuVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2781
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2782
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2783
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2784
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2785
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2786
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2787
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    if-eqz v0, :cond_0

    .line 2788
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2790
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    .line 2791
    return-void
.end method

.method public setSharepPre(Lcom/android/camera/ComboPreferences;)V
    .locals 0
    .param p1, "mPre"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 703
    return-void
.end method

.method public setTitleBarVisibility(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 1882
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1893
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 1894
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    :cond_2
    return-void
.end method

.method public showArcProgressBar(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1111
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->hideArcProgressBar()V

    .line 1112
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mLastViewId:I

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraControls;->initArcProgressBar(I)V

    .line 1114
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mAFProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    goto :goto_0

    .line 1118
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_3

    .line 1119
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mISOProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    goto :goto_0

    .line 1120
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_4

    .line 1121
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mEVProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    goto :goto_0

    .line 1122
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mProgressbar:Lcom/android/camera/ui/ArcProgressbar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCameraSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2794
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2795
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 2796
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2802
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v0, :cond_1

    .line 2803
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2806
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 2807
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2809
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2811
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    if-eqz v0, :cond_3

    .line 2812
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2813
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2814
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2815
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2816
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2817
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2820
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2822
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 2824
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    return-void
.end method

.method public showPreviewThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2846
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mHideThumbnail:Z

    .line 2847
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2848
    return-void
.end method

.method public showProMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2740
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    .line 2741
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getProParam()V

    .line 2742
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/ui/CameraControls;->PRO_TEXT_KEY:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2743
    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraControls;->setProMenuText(I)V

    .line 2742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2746
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_reset:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2747
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_af:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2748
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_s:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2749
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_iso:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2750
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_ev:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2751
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMpro_wb:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2753
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->isManual:Z

    if-eqz v1, :cond_1

    .line 2754
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mMPro_manual:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 2757
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    .line 2758
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2675
    iget-object v3, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 2676
    iget v0, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-nez v0, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2679
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2675
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2677
    goto :goto_1
.end method

.method public showRemainingPhotoCnt()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    .line 2835
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2836
    iget-object v0, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2837
    return-void
.end method

.method public showUI()V
    .locals 1

    .prologue
    .line 2142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraControls;->showUI(Z)V

    .line 2143
    return-void
.end method

.method public showUI(Z)V
    .locals 12
    .param p1, "isAnim"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    .line 2145
    const-string v4, "CAM_Controls"

    const-string v5, "showUI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-direct {p0}, Lcom/android/camera/ui/CameraControls;->getMakeupParam()V

    .line 2147
    sget-boolean v4, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    if-nez v4, :cond_0

    .line 2148
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/CameraControls;->enableTouch(Z)V

    .line 2149
    :cond_0
    sput-boolean v11, Lcom/android/camera/ui/CameraControls;->isAnimating:Z

    .line 2150
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->getUnifiedRotation()I

    move-result v0

    .line 2151
    .local v0, "rotation":I
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2152
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_1

    .line 2153
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2159
    :cond_1
    sget-boolean v4, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v4, :cond_2

    .line 2160
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2163
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v4, :cond_3

    .line 2164
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2167
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mCurrentScene:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0043

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mPhotoMoudle:Z

    if-eqz v4, :cond_4

    .line 2168
    iput-boolean v11, p0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    .line 2169
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraControls;->setProMenuVisible()V

    .line 2172
    :cond_4
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2174
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2176
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2177
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2178
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2179
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2180
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2181
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2183
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2185
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2186
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2187
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2188
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 2189
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2190
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2192
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    check-cast v4, Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/ModuleSwitcher;->removePopup()V

    .line 2194
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopSwitcher;->removePopup()V

    .line 2196
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 2197
    .local v1, "shutterAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_6

    .line 2198
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2200
    :cond_6
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2201
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2203
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/PopSwitcher;->setVisibility(I)V

    .line 2206
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mHideThumbnail:Z

    if-nez v4, :cond_7

    .line 2207
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2211
    :cond_7
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/CameraControls;->inlistener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2212
    iget v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    .line 2213
    .local v2, "tmpSize":I
    if-nez p1, :cond_8

    .line 2214
    iput v7, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    .line 2216
    :cond_8
    sparse-switch v0, :sswitch_data_0

    .line 2378
    :goto_1
    if-nez p1, :cond_9

    .line 2379
    iput v2, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    .line 2381
    :cond_9
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-nez v4, :cond_a

    .line 2383
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2385
    :cond_a
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mRefocusToast:Lcom/android/camera/ui/CameraControls$ArrowTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/CameraControls$ArrowTextView;->setVisibility(I)V

    .line 2387
    sput-boolean v11, Lcom/android/camera/TsMakeupManager;->is_makeup_shown:Z

    .line 2389
    return-void

    .line 2218
    :sswitch_0
    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0, v10, v4}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 2220
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2222
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_b

    .line 2223
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2229
    :cond_b
    sget-boolean v4, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v4, :cond_c

    .line 2230
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2233
    :cond_c
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v4, :cond_d

    .line 2234
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2236
    :cond_d
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2238
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2242
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2244
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2245
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2247
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2249
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2251
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2252
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2253
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2254
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2255
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 2258
    :sswitch_1
    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0, v4, v10}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 2260
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2262
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_e

    .line 2263
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2269
    :cond_e
    sget-boolean v4, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v4, :cond_f

    .line 2270
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2273
    :cond_f
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v4, :cond_10

    .line 2274
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2276
    :cond_10
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2278
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2282
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2284
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2285
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2287
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2289
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2291
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2292
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2293
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2294
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2295
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 2298
    :sswitch_2
    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-direct {p0, v10, v4}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 2300
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2302
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_11

    .line 2303
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2309
    :cond_11
    sget-boolean v4, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v4, :cond_12

    .line 2310
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2313
    :cond_12
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v4, :cond_13

    .line 2314
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2316
    :cond_13
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2318
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2322
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2324
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2325
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2327
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2329
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2331
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2332
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2333
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2334
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2335
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 2338
    :sswitch_3
    iget v4, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v4, v4

    invoke-direct {p0, v4, v10}, Lcom/android/camera/ui/CameraControls;->resetLocation(FF)V

    .line 2340
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2342
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_14

    .line 2343
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mTsMakeupSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2349
    :cond_14
    sget-boolean v4, Lcom/android/camera/ui/CameraControls;->HDR_IS_SHOW_ON_UI:Z

    if-eqz v4, :cond_15

    .line 2350
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mHdrSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2353
    :cond_15
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraControls;->mIsBokehMode:Z

    if-eqz v4, :cond_16

    .line 2354
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mBokehSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2356
    :cond_16
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2358
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFlashSwitcher:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2362
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2364
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMenu:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2365
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mMute:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2367
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoFlash:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2369
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mExitPanorama:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2371
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mSwitcher:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2372
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2373
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mVideoShutter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2374
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mIndicators:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2375
    iget-object v4, p0, Lcom/android/camera/ui/CameraControls;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/CameraControls;->mSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 2216
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public updateRemainingPhotos(I)V
    .locals 8
    .param p1, "remaining"    # I

    .prologue
    .line 2628
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    sub-long v2, v4, v6

    .line 2629
    .local v2, "remainingStorage":J
    if-gez p1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraControls;->mHideRemainingPhoto:Z

    if-eqz v1, :cond_2

    .line 2630
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2643
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/CameraControls;->mCurrentRemaining:I

    .line 2644
    return-void

    .line 2632
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2633
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotos:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2632
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2635
    :cond_3
    const/16 v1, 0x14

    if-ge p1, v1, :cond_4

    .line 2636
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v4, "<20 "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2637
    :cond_4
    const v1, 0xf4240

    if-lt p1, v1, :cond_5

    .line 2638
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    const-string v4, ">1000000"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2640
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls;->mRemainingPhotosText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
