.class public Lcom/android/camera/ui/ArcProgressbar;
.super Landroid/view/View;
.source "ArcProgressbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;
    }
.end annotation


# static fields
.field private static final COUNT_HEIGHT:I = 0x108

.field private static final DRAWABLE_RES_IDS:[I

.field private static final MENU_KEY_HEIGHT:I = 0x30

.field private static final PI:D = 3.1415926

.field private static final PICTURE_BUTTON_HEIGHT:I = 0x64

.field private static final PROJECT_1830:Ljava/lang/String; = "ZQL1830"

.field private static final PROJECT_NAME:Ljava/lang/String;

.field private static final PRO_AF:I = 0x1

.field private static final PRO_ANGLE_KEY:[Ljava/lang/String;

.field private static final PRO_BUTTON_HEIGHT:I = 0x2e

.field private static final PRO_DEFAULT_LEVEL_KEY:[I

.field private static final PRO_EV:I = 0x4

.field private static final PRO_ISO:I = 0x3

.field private static final PRO_LEVEL_KEY:[Ljava/lang/String;

.field private static final PRO_RESET_KEY:[Ljava/lang/String;

.field private static final PRO_S:I = 0x2

.field private static final PRO_WB:I = 0x5

.field private static final SCREEN_HEIGHT:I = 0x870

.field private static final SHADOW:I

.field private static final SHADOWWIDTH:I = 0x46

.field private static final SHADOW_DIAMETER:I = 0xa64

.field private static final SHADOW_HEIGHT:I = 0x46

.field private static final TAG:Ljava/lang/String; = "ArcProgressbar"

.field private static final THUMB_RADIUS:I = 0x33

.field private static final TRANSLATION:I = 0x58


# instance fields
.field private ANGLE_LIMITED:F

.field private BIGMARKDIAMETER:F

.field private CENTER_X:F

.field private CENTER_Y:I

.field private DIAMETER:I

.field private final IS_SINGLE_AUTO:Z

.field private MARK_MARGIN_TOP:I

.field private PicToText:[Ljava/lang/String;

.field private RADIUS_DIAMETER:I

.field private TOUCH_ANGLE:F

.field private TOUCH_AREA_WIDE:I

.field private afMoutainMarginTop:F

.field private afMoutainMarginTop_px:F

.field private afSnowMarginTop:F

.field private afSnowMarginTop_px:F

.field private barColor:I

.field private barStrokeWidth:I

.field private bgColor:I

.field private center_y_px:F

.field private currentWidthPX:F

.field private diameter_px:F

.field private endAngle:I

.field private gap:F

.field private isDown:Z

.field private isMoved:Z

.field private isPicture:Z

.field private isReset:Z

.field private isSelected:Z

.field private isUp:Z

.field private lastAFLevel:F

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private lastPositive:F

.field private lastPositiveNew:F

.field private lastValue:Ljava/lang/String;

.field private leftCount:I

.field private leftMoveCount:I

.field private lineLimited:F

.field private mAFSelectedResID:[Landroid/graphics/Bitmap;

.field private mArrayOfBigIcons:[I

.field private mArrayOfIcons:[I

.field private mArrayOfText:[Ljava/lang/String;

.field private mAutoSelectedResID:[Landroid/graphics/Bitmap;

.field private mBigIcon:[Landroid/graphics/Bitmap;

.field private mBigMarkDiameter:F

.field private mCanvas:Landroid/graphics/Canvas;

.field private mChangeSound:Landroid/media/SoundPool;

.field private mCurrentAngle:F

.field private mCurrentLevel:I

.field private mCurrentTranslation:I

.field private mIndicateSelectedResID:[Landroid/graphics/Bitmap;

.field private mInited:Z

.field private mLastLevel:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMarkPos:[F

.field private mNeedShowShadow:Z

.field private mOnArcBarChangeListener:Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

.field private mPainStText:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintBigCir:Landroid/graphics/Paint;

.field private mPaintBigFillCir:Landroid/graphics/Paint;

.field private mPaintBigText:Landroid/graphics/Paint;

.field private mPaintIcon:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mPaintTextSelected:Landroid/graphics/Paint;

.field private mResIsReady:Z

.field private mSTextSize:I

.field private mSmallIcon:[Landroid/graphics/Bitmap;

.field private mSmallText:[Ljava/lang/String;

.field private mSoundId:I

.field private mStep:I

.field private mTextSSize_px:F

.field private mTextSize:I

.field private mTextSize_px:F

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbResID:[I

.field private mTouchDownAngle:F

.field private mTouch_x:F

.field private mTouch_y:F

.field private mType:I

.field private mWidthDeviation:F

.field private mark_margin_top_px:F

.field private mark_move_px:F

.field matrix:Landroid/graphics/Matrix;

.field private oldTilt:F

.field private oldTouch_x:F

.field private oldX:F

.field private pro_wb_move:F

.field private radius_diameter_px:F

.field private rectMM:Landroid/graphics/RectF;

.field private rightCount:I

.field private rightMoveCount:I

.field private startAngle:I

.field private staticPoint:Z

.field private textHeight:I

.field private textHeight_px:F

.field private touchDownXValue:F

.field private touchDownYValue:F

.field private touchUpValue:F

.field private touch_area_wide_px:F

.field private touch_line:F

.field private visibleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 66
    const/16 v0, 0x58

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ArcProgressbar;->SHADOW:I

    .line 154
    const-string v0, "ro.hq.project"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ArcProgressbar;->PROJECT_NAME:Ljava/lang/String;

    .line 175
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pro_reset_key"

    aput-object v1, v0, v3

    const-string v1, "pro_af_reset"

    aput-object v1, v0, v6

    const-string v1, "pro_s_reset"

    aput-object v1, v0, v7

    const-string v1, "pro_iso_reset"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "pro_ev_reset"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pro_wb_reset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_RESET_KEY:[Ljava/lang/String;

    .line 183
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pro_reset_level"

    aput-object v1, v0, v3

    const-string v1, "pro_af_level"

    aput-object v1, v0, v6

    const-string v1, "pro_s_level"

    aput-object v1, v0, v7

    const-string v1, "pro_iso_level"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "pro_ev_level"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pro_wb_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_LEVEL_KEY:[Ljava/lang/String;

    .line 191
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_DEFAULT_LEVEL_KEY:[I

    .line 199
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pro_reset_angle"

    aput-object v1, v0, v3

    const-string v1, "pro_af_angle"

    aput-object v1, v0, v6

    const-string v1, "pro_s_angle"

    aput-object v1, v0, v7

    const-string v1, "pro_iso_angle"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "pro_ev_angle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pro_wb_angle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_ANGLE_KEY:[Ljava/lang/String;

    .line 208
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/ArcProgressbar;->DRAWABLE_RES_IDS:[I

    return-void

    .line 191
    :array_0
    .array-data 4
        0x0
        0x7
        0xe
        0x2
        0x2
        0x2
    .end array-data

    .line 208
    :array_1
    .array-data 4
        0x7f02003e
        0x7f02003a
        0x7f0200c1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_AREA_WIDE:I

    .line 37
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_ANGLE:F

    .line 38
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    .line 39
    const/high16 v0, 0x41b80000    # 23.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->BIGMARKDIAMETER:F

    .line 40
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->DIAMETER:I

    .line 42
    const/16 v0, 0x1b8

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->MARK_MARGIN_TOP:I

    .line 44
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    .line 45
    const/16 v0, 0x2ff

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_Y:I

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->RADIUS_DIAMETER:I

    .line 57
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigMarkDiameter:F

    .line 58
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->diameter_px:F

    .line 59
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->radius_diameter_px:F

    .line 60
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_area_wide_px:F

    .line 61
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    .line 62
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    .line 63
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize_px:F

    .line 64
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    .line 65
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSSize_px:F

    .line 68
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize:I

    .line 69
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSTextSize:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    .line 80
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumbResID:[I

    .line 81
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->barStrokeWidth:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->bgColor:I

    .line 87
    sget v0, Lcom/android/camera/ui/ArcProgressbar;->SHADOW:I

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->barColor:I

    .line 88
    const/16 v0, 0x58

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentTranslation:I

    .line 89
    const/16 v0, -0x28

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->startAngle:I

    .line 90
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->endAngle:I

    .line 91
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    .line 92
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    .line 93
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    .line 94
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    .line 95
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    .line 96
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    .line 97
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    .line 98
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    .line 99
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    .line 101
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    .line 103
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->rectMM:Landroid/graphics/RectF;

    .line 105
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_x:F

    .line 106
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_y:F

    .line 108
    iput-boolean v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mNeedShowShadow:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mResIsReady:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    .line 112
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mOnArcBarChangeListener:Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->matrix:Landroid/graphics/Matrix;

    .line 117
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownXValue:F

    .line 118
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownYValue:F

    .line 119
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchUpValue:F

    .line 120
    iput v4, p0, Lcom/android/camera/ui/ArcProgressbar;->leftMoveCount:I

    .line 121
    iput v4, p0, Lcom/android/camera/ui/ArcProgressbar;->rightMoveCount:I

    .line 122
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isMoved:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isDown:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isUp:Z

    .line 125
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->oldX:F

    .line 126
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->oldTilt:F

    .line 127
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastPositive:F

    .line 128
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastPositiveNew:F

    .line 129
    iput v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mLastLevel:I

    .line 130
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->staticPoint:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isReset:Z

    .line 134
    iput v3, p0, Lcom/android/camera/ui/ArcProgressbar;->leftCount:I

    .line 135
    iput v3, p0, Lcom/android/camera/ui/ArcProgressbar;->rightCount:I

    .line 138
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight:I

    .line 139
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastAFLevel:F

    .line 141
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    .line 142
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop_px:F

    .line 143
    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop:F

    .line 144
    const/high16 v0, 0x41b80000    # 23.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop:F

    .line 156
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    .line 159
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    .line 160
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    .line 161
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouchDownAngle:F

    .line 162
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mWidthDeviation:F

    .line 163
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    .line 165
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    .line 166
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    .line 167
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mIndicateSelectedResID:[Landroid/graphics/Bitmap;

    .line 168
    iput-boolean v4, p0, Lcom/android/camera/ui/ArcProgressbar;->IS_SINGLE_AUTO:Z

    .line 169
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isSelected:Z

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->lastValue:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->lastBitmap:Landroid/graphics/Bitmap;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->visibleIndex:I

    .line 173
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->pro_wb_move:F

    .line 174
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_line:F

    .line 216
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_AREA_WIDE:I

    .line 37
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_ANGLE:F

    .line 38
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    .line 39
    const/high16 v0, 0x41b80000    # 23.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->BIGMARKDIAMETER:F

    .line 40
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->DIAMETER:I

    .line 42
    const/16 v0, 0x1b8

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->MARK_MARGIN_TOP:I

    .line 44
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    .line 45
    const/16 v0, 0x2ff

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_Y:I

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->RADIUS_DIAMETER:I

    .line 57
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigMarkDiameter:F

    .line 58
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->diameter_px:F

    .line 59
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->radius_diameter_px:F

    .line 60
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_area_wide_px:F

    .line 61
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    .line 62
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    .line 63
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize_px:F

    .line 64
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    .line 65
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSSize_px:F

    .line 68
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize:I

    .line 69
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSTextSize:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    .line 80
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumbResID:[I

    .line 81
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->barStrokeWidth:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->bgColor:I

    .line 87
    sget v0, Lcom/android/camera/ui/ArcProgressbar;->SHADOW:I

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->barColor:I

    .line 88
    const/16 v0, 0x58

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentTranslation:I

    .line 89
    const/16 v0, -0x28

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->startAngle:I

    .line 90
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->endAngle:I

    .line 91
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    .line 92
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    .line 93
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    .line 94
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    .line 95
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    .line 96
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    .line 97
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    .line 98
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    .line 99
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    .line 101
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    .line 103
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->rectMM:Landroid/graphics/RectF;

    .line 105
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_x:F

    .line 106
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_y:F

    .line 108
    iput-boolean v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mNeedShowShadow:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mResIsReady:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    .line 112
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mOnArcBarChangeListener:Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->matrix:Landroid/graphics/Matrix;

    .line 117
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownXValue:F

    .line 118
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownYValue:F

    .line 119
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchUpValue:F

    .line 120
    iput v4, p0, Lcom/android/camera/ui/ArcProgressbar;->leftMoveCount:I

    .line 121
    iput v4, p0, Lcom/android/camera/ui/ArcProgressbar;->rightMoveCount:I

    .line 122
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isMoved:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isDown:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isUp:Z

    .line 125
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->oldX:F

    .line 126
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->oldTilt:F

    .line 127
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastPositive:F

    .line 128
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastPositiveNew:F

    .line 129
    iput v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mLastLevel:I

    .line 130
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->staticPoint:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isReset:Z

    .line 134
    iput v3, p0, Lcom/android/camera/ui/ArcProgressbar;->leftCount:I

    .line 135
    iput v3, p0, Lcom/android/camera/ui/ArcProgressbar;->rightCount:I

    .line 138
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight:I

    .line 139
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastAFLevel:F

    .line 141
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    .line 142
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop_px:F

    .line 143
    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop:F

    .line 144
    const/high16 v0, 0x41b80000    # 23.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop:F

    .line 156
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    .line 159
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    .line 160
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    .line 161
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouchDownAngle:F

    .line 162
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mWidthDeviation:F

    .line 163
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    .line 165
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    .line 166
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    .line 167
    new-array v0, v5, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mIndicateSelectedResID:[Landroid/graphics/Bitmap;

    .line 168
    iput-boolean v4, p0, Lcom/android/camera/ui/ArcProgressbar;->IS_SINGLE_AUTO:Z

    .line 169
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->isSelected:Z

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->lastValue:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->lastBitmap:Landroid/graphics/Bitmap;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->visibleIndex:I

    .line 173
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->pro_wb_move:F

    .line 174
    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_line:F

    .line 221
    iput-boolean v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ArcProgressbar;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->isTouchOnLine(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouchDownAngle:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouchDownAngle:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/ArcProgressbar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/ArcProgressbar;)Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mOnArcBarChangeListener:Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/ArcProgressbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/ArcProgressbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/ArcProgressbar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/ui/ArcProgressbar;->isMoved:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/ui/ArcProgressbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/ArcProgressbar;->isMoved:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/camera/ui/ArcProgressbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/ArcProgressbar;->isDown:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/ArcProgressbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/ArcProgressbar;->isUp:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/ArcProgressbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mNeedShowShadow:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/camera/ui/ArcProgressbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentTranslation:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/ArcProgressbar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ArcProgressbar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/ArcProgressbar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/ui/ArcProgressbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/ArcProgressbar;->isReset:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/ArcProgressbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/ArcProgressbar;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ArcProgressbar;->setResetStatus(IZ)V

    return-void
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_LEVEL_KEY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()[I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_DEFAULT_LEVEL_KEY:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/ArcProgressbar;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ArcProgressbar;->getProParamLevel(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_ANGLE_KEY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/ArcProgressbar;Ljava/lang/String;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->getProParamAngle(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ArcProgressbar;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumbResID:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/ArcProgressbar;F)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->getRecentLevel(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchUpValue:F

    return p1
.end method

.method static synthetic access$3202(Lcom/android/camera/ui/ArcProgressbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->leftMoveCount:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/camera/ui/ArcProgressbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->rightMoveCount:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/ArcProgressbar;FFFF)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/ArcProgressbar;->getSlipAngle(FFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastAFLevel:F

    return p1
.end method

.method static synthetic access$3602(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->oldTouch_x:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ArcProgressbar;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ArcProgressbar;->getTiltAngle(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->findRecentPosition(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_x:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_x:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_y:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_y:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownXValue:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownXValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ArcProgressbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownYValue:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/ArcProgressbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ArcProgressbar;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownYValue:F

    return p1
.end method

.method private cleanResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 775
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    .line 776
    iput v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    .line 777
    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfIcons:[I

    .line 778
    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfBigIcons:[I

    .line 779
    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    .line 780
    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    .line 781
    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    .line 782
    iput-boolean v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mResIsReady:Z

    .line 783
    iput-boolean v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    .line 784
    return-void
.end method

.method private drawAutoMark(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 718
    sget-object v0, Lcom/android/camera/ui/ArcProgressbar;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 720
    .local v11, "rotateAngle":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 721
    .local v13, "translateY":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 722
    .local v6, "lineBeginX":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 723
    .local v9, "lineEndy":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 731
    .local v7, "lineBeginY":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 732
    .local v12, "translateX":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 734
    .local v8, "lineEndx":I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 735
    .local v10, "m":Landroid/graphics/Matrix;
    int-to-float v0, v11

    invoke-virtual {v10, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 736
    int-to-float v0, v12

    int-to-float v1, v13

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 737
    sget-object v0, Lcom/android/camera/ui/ArcProgressbar;->PRO_RESET_KEY:[Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ArcProgressbar;->getResetStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 742
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v1, v0

    int-to-float v2, v7

    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 744
    return-void

    .line 725
    .end local v6    # "lineBeginX":I
    .end local v7    # "lineBeginY":I
    .end local v8    # "lineEndx":I
    .end local v9    # "lineEndy":I
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v11    # "rotateAngle":I
    .end local v12    # "translateX":I
    .end local v13    # "translateY":I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 726
    .restart local v11    # "rotateAngle":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 727
    .restart local v13    # "translateY":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 728
    .restart local v6    # "lineBeginX":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 729
    .restart local v9    # "lineEndy":I
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .restart local v7    # "lineBeginY":I
    goto/16 :goto_0

    .line 740
    .restart local v8    # "lineEndx":I
    .restart local v10    # "m":Landroid/graphics/Matrix;
    .restart local v12    # "translateX":I
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private drawBigMark(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x41700000    # 15.0f

    .line 700
    iget-boolean v0, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 703
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigMarkDiameter:F

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigMarkDiameter:F

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawIndicate(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f020192

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 696
    .local v0, "myBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 697
    return-void
.end method

.method private drawMark(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 653
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 658
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 659
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 661
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    if-ge v0, v1, :cond_a

    .line 662
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    if-eqz v1, :cond_4

    .line 663
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 667
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    if-eqz v1, :cond_9

    .line 668
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setBipmapInvisible(IZ)V

    .line 669
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 670
    if-nez v0, :cond_5

    .line 671
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 682
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/ArcProgressbar;->setBipmapVisible()V

    .line 689
    :goto_3
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_ANGLE:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 672
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    .line 673
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 675
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 677
    :cond_7
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 678
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->pro_wb_move:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 680
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 684
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ArcProgressbar;->setTextInvisible(I)V

    .line 685
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 686
    invoke-direct {p0}, Lcom/android/camera/ui/ArcProgressbar;->setTextVisible()V

    goto/16 :goto_3

    .line 691
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method private drawMoveMark(Landroid/graphics/Canvas;F)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentAngle"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 546
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 547
    :cond_0
    const-string v1, "ArcProgressbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->isReset:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/android/camera/ui/ArcProgressbar;->PRO_RESET_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ArcProgressbar;->getResetStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->drawMark(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 554
    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 555
    const-string v1, "ArcProgressbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentAngle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 557
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    if-ge v0, v1, :cond_e

    .line 560
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    if-eqz v1, :cond_a

    .line 561
    invoke-direct {p0, v0, v5}, Lcom/android/camera/ui/ArcProgressbar;->setBipmapInvisible(IZ)V

    .line 562
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    if-ne v1, v5, :cond_8

    .line 563
    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    if-ne v1, v0, :cond_4

    .line 564
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 581
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/ArcProgressbar;->setBipmapVisible()V

    .line 602
    :goto_3
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    if-ne v1, v0, :cond_5

    .line 566
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 568
    :cond_5
    if-nez v0, :cond_6

    .line 569
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 570
    :cond_6
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_7

    .line 571
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 573
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 576
    :cond_8
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 577
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->pro_wb_move:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 579
    :cond_9
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 583
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ArcProgressbar;->setTextInvisible(I)V

    .line 585
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 586
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    if-ne v0, v1, :cond_b

    .line 587
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 599
    :goto_4
    invoke-direct {p0}, Lcom/android/camera/ui/ArcProgressbar;->setTextVisible()V

    goto/16 :goto_3

    .line 589
    :cond_b
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 593
    :cond_c
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    if-ne v0, v1, :cond_d

    .line 594
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 596
    :cond_d
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 604
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method private drawThumb(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # F

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 628
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 629
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 635
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 630
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 631
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 633
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private drawThumb(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 608
    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_1

    cmpl-float v1, p3, v2

    if-nez v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mMarkPos:[F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    aget v1, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/ArcProgressbar;->drawThumb(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 612
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/ArcProgressbar;->getTiltAngle(FF)F

    move-result v0

    .line 613
    .local v0, "tilt":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 614
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 615
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 621
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 616
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 617
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 619
    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private findRecentPosition(F)F
    .locals 4
    .param p1, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 884
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 894
    :cond_0
    :goto_0
    return v1

    .line 885
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, -0x2

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_0

    .line 886
    int-to-float v2, v0

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    .line 887
    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v1, v2

    sub-float v1, p1, v1

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v2, v3

    sub-float/2addr v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 888
    add-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v1, v2

    goto :goto_0

    .line 890
    :cond_2
    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v1, v2

    goto :goto_0

    .line 885
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I

    .prologue
    const/4 v6, 0x0

    .line 640
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 641
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 642
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 644
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 645
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 646
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 647
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getMarkAngle(I)[F
    .locals 4
    .param p1, "step"    # I

    .prologue
    .line 898
    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    const/4 v1, 0x0

    .line 904
    :cond_0
    return-object v1

    .line 899
    :cond_1
    new-array v1, p1, [F

    .line 900
    .local v1, "pos":[F
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    neg-float v3, v3

    aput v3, v1, v2

    .line 901
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 902
    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getProParamAngle(Ljava/lang/String;)F
    .locals 2
    .param p1, "angleName"    # Ljava/lang/String;

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 942
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
    .line 937
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 938
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getRecentLevel(F)I
    .locals 5
    .param p1, "angle"    # F

    .prologue
    .line 908
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    .line 919
    :goto_0
    return v2

    .line 909
    :cond_0
    const/4 v0, 0x0

    .line 910
    .local v0, "ret":I
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 911
    .local v1, "tmp_angle":F
    const-string v2, "wchbbb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp_angle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    div-float v2, v1, v2

    float-to-int v0, v2

    .line 913
    const-string v2, "wchbbb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    if-gez v0, :cond_2

    .line 915
    const/4 v0, 0x0

    .line 919
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    goto :goto_0

    .line 916
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    .line 917
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v0, v2, -0x1

    goto :goto_1
.end method

.method private getResetStatus(Ljava/lang/String;)Z
    .locals 2
    .param p1, "resetName"    # Ljava/lang/String;

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 928
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getSlipAngle(FFFF)F
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "down_x"    # F
    .param p4, "down_y"    # F

    .prologue
    .line 877
    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    sub-float v0, p1, v4

    .line 878
    .local v0, "dx":F
    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    sub-float v2, v4, p2

    .line 879
    .local v2, "dy":F
    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    sub-float v1, p3, v4

    .line 880
    .local v1, "dx_down":F
    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    sub-float v3, v4, p4

    .line 881
    .local v3, "dy_down":F
    div-float v4, v0, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v4, v6

    div-float v6, v1, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method private getTiltAngle(FF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 872
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    sub-float v0, p1, v2

    .line 873
    .local v0, "dx":F
    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    sub-float v1, v2, p2

    .line 874
    .local v1, "dy":F
    div-float v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private getTiltAngle(Landroid/graphics/Point;)F
    .locals 2
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 869
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ArcProgressbar;->getTiltAngle(FF)F

    move-result v0

    return v0
.end method

.method private init(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 247
    const-string v1, "ArcProgressbar"

    const-string v2, "ArcBarInit."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_move_px:F

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->pro_wb_move:F

    .line 254
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_line:F

    .line 256
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->DIAMETER:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->diameter_px:F

    .line 257
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->BIGMARKDIAMETER:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigMarkDiameter:F

    .line 258
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->RADIUS_DIAMETER:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->radius_diameter_px:F

    .line 259
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_AREA_WIDE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_area_wide_px:F

    .line 260
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_Y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    .line 261
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    .line 262
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->MARK_MARGIN_TOP:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    .line 264
    sget-object v1, Lcom/android/camera/ui/ArcProgressbar;->PROJECT_NAME:Ljava/lang/String;

    const-string v2, "ZQL1830"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mark_margin_top_px:F

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->pro_wb_move:F

    .line 269
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize_px:F

    .line 270
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSSize_px:F

    .line 271
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->textHeight_px:F

    .line 273
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afMoutainMarginTop_px:F

    .line 274
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->currentWidthPX:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->afSnowMarginTop_px:F

    .line 276
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 277
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    .line 278
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    const-string v2, "#70000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mNeedShowShadow:Z

    if-eqz v1, :cond_e

    .line 284
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->radius_diameter_px:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 290
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 291
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    .line 292
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->barStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBg:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 299
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    .line 300
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    if-nez v1, :cond_5

    .line 306
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    .line 307
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->barStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintIcon:Landroid/graphics/Paint;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    .line 314
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    .line 315
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 316
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 319
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize_px:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 320
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintText:Landroid/graphics/Paint;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    if-nez v1, :cond_7

    .line 323
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    .line 324
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 328
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSSize_px:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 329
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPainStText:Landroid/graphics/Paint;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    if-nez v1, :cond_8

    .line 332
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    .line 333
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize_px:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintTextSelected:Landroid/graphics/Paint;

    const-string v2, "#ccff00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    if-nez v1, :cond_9

    .line 341
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 343
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 346
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mTextSize_px:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 347
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigText:Landroid/graphics/Paint;

    const-string v2, "#ccff00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    :cond_9
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    if-nez v1, :cond_a

    .line 350
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    .line 351
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 352
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 355
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 356
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    const-string v2, "#ccff00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    :cond_a
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    if-nez v1, :cond_b

    .line 361
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    .line 362
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 366
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 367
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigFillCir:Landroid/graphics/Paint;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintBigCir:Landroid/graphics/Paint;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 372
    :cond_b
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_c

    .line 373
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    .line 374
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mLinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 381
    :cond_c
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    if-nez v1, :cond_d

    .line 382
    new-instance v1, Lcom/android/camera/ui/ArcProgressbar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ArcProgressbar$1;-><init>(Lcom/android/camera/ui/ArcProgressbar;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ArcProgressbar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    :cond_d
    iput-boolean v5, p0, Lcom/android/camera/ui/ArcProgressbar;->mInited:Z

    .line 511
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->invalidate()V

    .line 512
    return-void

    .line 285
    :cond_e
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentTranslation:I

    if-lez v1, :cond_2

    .line 286
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentTranslation:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 287
    .local v0, "c":I
    const/16 v1, 0x58

    iput v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentTranslation:I

    .line 288
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    iget v2, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    iget v3, p0, Lcom/android/camera/ui/ArcProgressbar;->radius_diameter_px:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lcom/android/camera/ui/ArcProgressbar;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private initMark(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 747
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 772
    :cond_0
    return-void

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 749
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    .line 751
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 752
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    .line 754
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 755
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    .line 757
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->PicToText:[Ljava/lang/String;

    if-nez v1, :cond_5

    .line 758
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->PicToText:[Ljava/lang/String;

    .line 760
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    if-ge v0, v1, :cond_0

    .line 761
    iget-boolean v1, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    if-eqz v1, :cond_6

    .line 762
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfIcons:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 763
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mBigIcon:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfBigIcons:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 760
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfIcons:[I

    if-eqz v1, :cond_7

    .line 766
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfIcons:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 768
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfText:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method private initSoundPool()V
    .locals 4

    .prologue
    .line 922
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mChangeSound:Landroid/media/SoundPool;

    .line 924
    return-void
.end method

.method private isTouchOnLine(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 858
    const/4 v1, 0x1

    .line 859
    .local v1, "isTouch":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 860
    .local v2, "tx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 861
    .local v3, "ty":F
    iget v4, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/camera/ui/ArcProgressbar;->CENTER_X:F

    sub-float v5, v2, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/android/camera/ui/ArcProgressbar;->center_y_px:F

    sub-float v6, v3, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 862
    .local v0, "distance":I
    int-to-float v4, v0

    iget v5, p0, Lcom/android/camera/ui/ArcProgressbar;->diameter_px:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_line:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/ArcProgressbar;->touch_area_wide_px:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 863
    const/4 v1, 0x0

    .line 865
    :cond_0
    return v1
.end method

.method private setBipmapInvisible(IZ)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "move"    # Z

    .prologue
    .line 515
    const/4 v0, 0x2

    .line 516
    .local v0, "differIndex":I
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 517
    const/16 v0, 0x8

    .line 521
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->lastBitmap:Landroid/graphics/Bitmap;

    .line 523
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->visibleIndex:I

    .line 524
    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v3, 0x7f0201d8

    invoke-static {v2, v3}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, p1

    .line 526
    :cond_1
    return-void

    .line 518
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 519
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private setBipmapVisible()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallIcon:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->visibleIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->lastBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 531
    :cond_0
    return-void
.end method

.method private setResetStatus(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "bool"    # Z

    .prologue
    .line 931
    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 932
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 933
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/camera/ui/ArcProgressbar;->PRO_RESET_KEY:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 935
    return-void
.end method

.method private setTextInvisible(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 533
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->lastValue:Ljava/lang/String;

    .line 535
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->visibleIndex:I

    .line 536
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 538
    :cond_0
    return-void
.end method

.method private setTextVisible()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->lastValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mSmallText:[Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->visibleIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/ArcProgressbar;->lastValue:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->init(Landroid/graphics/Canvas;)V

    .line 228
    iget-boolean v0, p0, Lcom/android/camera/ui/ArcProgressbar;->isReset:Z

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->drawIndicate(Landroid/graphics/Canvas;)V

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mTouch_x:F

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->touchDownXValue:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 233
    iput-boolean v4, p0, Lcom/android/camera/ui/ArcProgressbar;->staticPoint:Z

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/ArcProgressbar;->isMoved:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    if-eq v0, v4, :cond_2

    .line 236
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->drawBigMark(Landroid/graphics/Canvas;)V

    .line 239
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 240
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->drawAutoMark(Landroid/graphics/Canvas;)V

    .line 243
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ArcProgressbar;->drawMoveMark(Landroid/graphics/Canvas;F)V

    .line 245
    return-void
.end method

.method public playSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 946
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mChangeSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 947
    invoke-direct {p0}, Lcom/android/camera/ui/ArcProgressbar;->initSoundPool()V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mChangeSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 950
    return-void
.end method

.method public resetResource(IIIFZ[I[IIIZ[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "step"    # I
    .param p3, "level"    # I
    .param p4, "angle"    # F
    .param p5, "mReset"    # Z
    .param p6, "icons"    # [I
    .param p7, "bigIcons"    # [I
    .param p8, "thumb"    # I
    .param p9, "thumbPressed"    # I
    .param p10, "mIsPicture"    # Z
    .param p11, "displayText"    # [Ljava/lang/String;
    .param p12, "autoText"    # Ljava/lang/String;

    .prologue
    .line 787
    iput p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    .line 788
    iput p2, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    .line 789
    const-string v0, "ArcProgressbar"

    const-string v1, "resetResource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput-boolean p10, p0, Lcom/android/camera/ui/ArcProgressbar;->isPicture:Z

    .line 791
    iput p3, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    .line 793
    iput p4, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    .line 794
    iput-boolean p5, p0, Lcom/android/camera/ui/ArcProgressbar;->isReset:Z

    .line 796
    if-eqz p11, :cond_1

    .line 797
    iput-object p11, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfText:[Ljava/lang/String;

    .line 802
    :goto_0
    iput-object p7, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfBigIcons:[I

    .line 804
    packed-switch p1, :pswitch_data_0

    .line 825
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    .line 829
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->TOUCH_ANGLE:F

    .line 830
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->ANGLE_LIMITED:F

    .line 831
    invoke-virtual {p0, p8, p9}, Lcom/android/camera/ui/ArcProgressbar;->setThumb(II)V

    .line 832
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ArcProgressbar;->initMark(I)V

    .line 833
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mStep:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ArcProgressbar;->getMarkAngle(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mMarkPos:[F

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mResIsReady:Z

    .line 836
    iget v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    invoke-virtual {p12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentLevel:I

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mCurrentAngle:F

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ArcProgressbar;->invalidate()V

    .line 842
    return-void

    .line 799
    :cond_1
    iput-object p6, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfIcons:[I

    .line 800
    iput-object p7, p0, Lcom/android/camera/ui/ArcProgressbar;->mArrayOfBigIcons:[I

    goto :goto_0

    .line 806
    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    goto :goto_1

    .line 810
    :pswitch_1
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    goto :goto_1

    .line 814
    :pswitch_2
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    goto :goto_1

    .line 817
    :pswitch_3
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    goto :goto_1

    .line 821
    :pswitch_4
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/ui/ArcProgressbar;->gap:F

    goto :goto_1

    .line 804
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

.method public setOnArcProgressBarChangeListener(Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;)V
    .locals 0
    .param p1, "Listener"    # Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/camera/ui/ArcProgressbar;->mOnArcBarChangeListener:Lcom/android/camera/ui/ArcProgressbar$OnArcProgressBarChangeListener;

    .line 955
    return-void
.end method

.method public setThumb(II)V
    .locals 5
    .param p1, "thumb"    # I
    .param p2, "thumbPressed"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumbResID:[I

    aput p1, v0, v3

    .line 846
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mThumbResID:[I

    aput p2, v0, v4

    .line 847
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f020191

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 848
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAFSelectedResID:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f020195

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 850
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f02018e

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 851
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mAutoSelectedResID:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f02018f

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 852
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mIndicateSelectedResID:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f020193

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 853
    iget-object v0, p0, Lcom/android/camera/ui/ArcProgressbar;->mIndicateSelectedResID:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/ArcProgressbar;->mContext:Landroid/content/Context;

    const v2, 0x7f020192

    invoke-static {v1, v2}, Lcom/android/camera/ui/ArcProgressbar;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 855
    return-void
.end method
