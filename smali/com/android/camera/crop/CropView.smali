.class public Lcom/android/camera/crop/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/crop/CropView$Mode;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CropView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropIndicator:Landroid/graphics/drawable/Drawable;

.field private mCropObj:Lcom/android/camera/crop/CropObject;

.field private mDashOffLength:F

.field private mDashOnLength:F

.field private mDirty:Z

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrixInverse:Landroid/graphics/Matrix;

.field private mDoSpot:Z

.field private mImageBounds:Landroid/graphics/RectF;

.field private mIndicatorSize:I

.field private mMargin:I

.field private mMinSideSize:I

.field private mMovingBlock:Z

.field private mOverlayShadowColor:I

.field private mOverlayWPShadowColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevX:F

.field private mPrevY:F

.field private mRotation:I

.field private mScreenBounds:Landroid/graphics/RectF;

.field private mScreenCropBounds:Landroid/graphics/RectF;

.field private mScreenImageBounds:Landroid/graphics/RectF;

.field private mShadow:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowMargin:I

.field private mSpotX:F

.field private mSpotY:F

.field private mState:Lcom/android/camera/crop/CropView$Mode;

.field private mTouchTolerance:I

.field private mWPMarkerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mMovingBlock:Z

    .line 55
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 56
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDirty:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    .line 60
    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    .line 61
    iput v0, p0, Lcom/android/camera/crop/CropView;->mSpotX:F

    .line 62
    iput v0, p0, Lcom/android/camera/crop/CropView;->mSpotY:F

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDoSpot:Z

    .line 65
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/camera/crop/CropView;->mShadowMargin:I

    .line 66
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/camera/crop/CropView;->mMargin:I

    .line 67
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/android/camera/crop/CropView;->mOverlayShadowColor:I

    .line 68
    const/high16 v0, 0x5f000000

    iput v0, p0, Lcom/android/camera/crop/CropView;->mOverlayWPShadowColor:I

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/crop/CropView;->mWPMarkerColor:I

    .line 70
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/crop/CropView;->mMinSideSize:I

    .line 71
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/camera/crop/CropView;->mTouchTolerance:I

    .line 72
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/camera/crop/CropView;->mDashOnLength:F

    .line 73
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/crop/CropView;->mDashOffLength:F

    .line 79
    sget-object v0, Lcom/android/camera/crop/CropView$Mode;->NONE:Lcom/android/camera/crop/CropView$Mode;

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/crop/CropView;->setup(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mMovingBlock:Z

    .line 55
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 56
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDirty:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    .line 60
    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    .line 61
    iput v0, p0, Lcom/android/camera/crop/CropView;->mSpotX:F

    .line 62
    iput v0, p0, Lcom/android/camera/crop/CropView;->mSpotY:F

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDoSpot:Z

    .line 65
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/camera/crop/CropView;->mShadowMargin:I

    .line 66
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/camera/crop/CropView;->mMargin:I

    .line 67
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/android/camera/crop/CropView;->mOverlayShadowColor:I

    .line 68
    const/high16 v0, 0x5f000000

    iput v0, p0, Lcom/android/camera/crop/CropView;->mOverlayWPShadowColor:I

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/crop/CropView;->mWPMarkerColor:I

    .line 70
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/crop/CropView;->mMinSideSize:I

    .line 71
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/camera/crop/CropView;->mTouchTolerance:I

    .line 72
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/camera/crop/CropView;->mDashOnLength:F

    .line 73
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/crop/CropView;->mDashOffLength:F

    .line 79
    sget-object v0, Lcom/android/camera/crop/CropView$Mode;->NONE:Lcom/android/camera/crop/CropView$Mode;

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/camera/crop/CropView;->setup(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mMovingBlock:Z

    .line 55
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 56
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDirty:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    .line 60
    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    .line 61
    iput v0, p0, Lcom/android/camera/crop/CropView;->mSpotX:F

    .line 62
    iput v0, p0, Lcom/android/camera/crop/CropView;->mSpotY:F

    .line 63
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDoSpot:Z

    .line 65
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/camera/crop/CropView;->mShadowMargin:I

    .line 66
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/camera/crop/CropView;->mMargin:I

    .line 67
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/android/camera/crop/CropView;->mOverlayShadowColor:I

    .line 68
    const/high16 v0, 0x5f000000

    iput v0, p0, Lcom/android/camera/crop/CropView;->mOverlayWPShadowColor:I

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/crop/CropView;->mWPMarkerColor:I

    .line 70
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/crop/CropView;->mMinSideSize:I

    .line 71
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/camera/crop/CropView;->mTouchTolerance:I

    .line 72
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/camera/crop/CropView;->mDashOnLength:F

    .line 73
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/camera/crop/CropView;->mDashOffLength:F

    .line 79
    sget-object v0, Lcom/android/camera/crop/CropView$Mode;->NONE:Lcom/android/camera/crop/CropView$Mode;

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/crop/CropView;->setup(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "times"    # I
    .param p3, "d"    # I

    .line 259
    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    .line 260
    .local v1, "mask":I
    and-int v0, p1, v1

    .line 261
    .local v0, "mout":I
    rem-int/2addr p2, p3

    .line 262
    sub-int v2, p3, p2

    shr-int v2, v0, v2

    .line 263
    .local v2, "hi":I
    shl-int v3, v0, p2

    and-int/2addr v3, v1

    .line 264
    .local v3, "low":I
    not-int v4, v1

    and-int/2addr v4, p1

    .line 265
    .local v4, "ret":I
    or-int/2addr v4, v3

    .line 266
    or-int/2addr v4, v2

    .line 267
    return v4
.end method

.method private clearDisplay()V
    .locals 1

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 198
    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 199
    invoke-virtual {p0}, Lcom/android/camera/crop/CropView;->invalidate()V

    .line 200
    return-void
.end method

.method private decode(IF)I
    .locals 3
    .param p1, "movingEdges"    # I
    .param p2, "rotation"    # F

    .line 274
    invoke-static {p2}, Lcom/android/camera/crop/CropMath;->constrainedRotation(F)I

    move-result v0

    .line 275
    .local v0, "rot":I
    const/16 v1, 0x5a

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 283
    return p1

    .line 281
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/crop/CropView;->bitCycleLeft(III)I

    move-result v1

    return v1

    .line 279
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/crop/CropView;->bitCycleLeft(III)I

    move-result v1

    return v1

    .line 277
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/crop/CropView;->bitCycleLeft(III)I

    move-result v1

    return v1
.end method

.method private reset()V
    .locals 2

    .line 188
    const-string v0, "CropView"

    const-string v1, "crop reset called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/android/camera/crop/CropView$Mode;->NONE:Lcom/android/camera/crop/CropView$Mode;

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    .line 192
    iput-boolean v0, p0, Lcom/android/camera/crop/CropView;->mMovingBlock:Z

    .line 193
    invoke-direct {p0}, Lcom/android/camera/crop/CropView;->clearDisplay()V

    .line 194
    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "rsc":Landroid/content/res/Resources;
    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/android/camera/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 99
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    .line 100
    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mIndicatorSize:I

    .line 101
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mShadowMargin:I

    .line 102
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mMargin:I

    .line 103
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mMinSideSize:I

    .line 104
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mTouchTolerance:I

    .line 105
    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mOverlayShadowColor:I

    .line 106
    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mOverlayWPShadowColor:I

    .line 107
    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mWPMarkerColor:I

    .line 108
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mDashOnLength:F

    .line 109
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/crop/CropView;->mDashOffLength:F

    .line 110
    return-void
.end method


# virtual methods
.method public applyAspect(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 228
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_3

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    .line 232
    iget v0, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    :goto_0
    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 233
    move v0, p1

    .line 234
    .local v0, "tmp":F
    move p1, p2

    .line 235
    move p2, v0

    .line 237
    .end local v0    # "tmp":F
    :cond_1
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/crop/CropObject;->setInnerAspectRatio(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string v0, "CropView"

    const-string v1, "failed to set aspect ratio"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/crop/CropView;->invalidate()V

    .line 241
    return-void

    .line 229
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments to applyAspect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyFreeAspect()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->unsetAspectRatio()V

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/crop/CropView;->invalidate()V

    .line 209
    return-void
.end method

.method public applyOriginalAspect()V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 213
    .local v0, "outer":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 214
    .local v1, "w":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 215
    .local v2, "h":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 216
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/crop/CropView;->applyAspect(FF)V

    .line 217
    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v3, v0, v0}, Lcom/android/camera/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 219
    :cond_0
    const-string v3, "CropView"

    const-string v4, "failed to set aspect ratio original"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void
.end method

.method public applySquareAspect()V
    .locals 1

    .line 224
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/crop/CropView;->applyAspect(FF)V

    .line 225
    return-void
.end method

.method protected configChanged()V
    .locals 1

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/crop/CropView;->mDirty:Z

    .line 204
    return-void
.end method

.method public getCrop()Landroid/graphics/RectF;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/RectF;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "newCropBounds"    # Landroid/graphics/RectF;
    .param p3, "newPhotoBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I

    .line 113
    iput-object p1, p0, Lcom/android/camera/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 116
    .local v0, "crop":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v1}, Lcom/android/camera/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 117
    .local v1, "containing":Landroid/graphics/RectF;
    if-ne v0, p2, :cond_0

    if-ne v1, p3, :cond_0

    iget v2, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    if-eq v2, p4, :cond_1

    .line 119
    :cond_0
    iput p4, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    .line 120
    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v2, p2, p3}, Lcom/android/camera/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 121
    invoke-direct {p0}, Lcom/android/camera/crop/CropView;->clearDisplay()V

    .line 123
    .end local v0    # "crop":Landroid/graphics/RectF;
    .end local v1    # "containing":Landroid/graphics/RectF;
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    iput p4, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    .line 125
    new-instance v0, Lcom/android/camera/crop/CropObject;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p2, v1}, Lcom/android/camera/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 126
    invoke-direct {p0}, Lcom/android/camera/crop/CropView;->clearDisplay()V

    .line 128
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 289
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/crop/CropView;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 293
    iput-boolean v1, p0, Lcom/android/camera/crop/CropView;->mDirty:Z

    .line 294
    invoke-direct {p0}, Lcom/android/camera/crop/CropView;->clearDisplay()V

    .line 297
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 298
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 299
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/crop/CropView;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/crop/CropView;->mMargin:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    if-nez v0, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/android/camera/crop/CropView;->reset()V

    .line 305
    new-instance v0, Lcom/android/camera/crop/CropObject;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/camera/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v0, :cond_6

    .line 310
    :cond_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 311
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 312
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    invoke-static {v0, v2, v3, v5}, Lcom/android/camera/crop/CropDrawingUtils;->setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 314
    const-string v0, "CropView"

    const-string v1, "failed to get screen matrix"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput-object v2, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 316
    return-void

    .line 318
    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 319
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 320
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 321
    const-string v0, "CropView"

    const-string v1, "could not invert display matrix"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-object v2, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 323
    return-void

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/camera/crop/CropView;->mMinSideSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/crop/CropObject;->setMinInnerSideSize(F)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/camera/crop/CropView;->mTouchTolerance:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/crop/CropObject;->setTouchTolerance(F)V

    .line 330
    :cond_6
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/crop/CropView;->mShadowMargin:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    float-to-int v0, v0

    .line 335
    .local v0, "margin":I
    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 336
    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget-object v5, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 338
    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 339
    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    .end local v0    # "margin":I
    :cond_7
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/camera/crop/CropView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 347
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lcom/android/camera/crop/CropObject;->getInnerBounds(Landroid/graphics/RectF;)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v6, v0

    .line 353
    .local v6, "p":Landroid/graphics/Paint;
    iget v0, p0, Lcom/android/camera/crop/CropView;->mOverlayShadowColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-static {p1, v6, v0, v3}, Lcom/android/camera/crop/CropDrawingUtils;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/camera/crop/CropDrawingUtils;->drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 359
    iget-boolean v0, p0, Lcom/android/camera/crop/CropView;->mDoSpot:Z

    if-nez v0, :cond_8

    .line 360
    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/camera/crop/CropDrawingUtils;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 362
    :cond_8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v7, v0

    .line 363
    .local v7, "wpPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/android/camera/crop/CropView;->mWPMarkerColor:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 365
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v5, p0, Lcom/android/camera/crop/CropView;->mDashOnLength:F

    aput v5, v3, v1

    iget v1, p0, Lcom/android/camera/crop/CropView;->mDashOnLength:F

    iget v5, p0, Lcom/android/camera/crop/CropView;->mDashOffLength:F

    add-float/2addr v1, v5

    aput v1, v3, v2

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 368
    iget v0, p0, Lcom/android/camera/crop/CropView;->mOverlayWPShadowColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    iget-object v1, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/crop/CropView;->mSpotX:F

    iget v3, p0, Lcom/android/camera/crop/CropView;->mSpotY:F

    move-object v0, p1

    move-object v4, v7

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/crop/CropDrawingUtils;->drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 372
    .end local v7    # "wpPaint":Landroid/graphics/Paint;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/camera/crop/CropView;->mIndicatorSize:I

    iget-object v3, p0, Lcom/android/camera/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    .line 373
    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->isFixedAspect()Z

    move-result v4

    iget-object v0, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/camera/crop/CropObject;->getSelectState()I

    move-result v0

    iget v5, p0, Lcom/android/camera/crop/CropView;->mRotation:I

    int-to-float v5, v5

    invoke-direct {p0, v0, v5}, Lcom/android/camera/crop/CropView;->decode(IF)I

    move-result v5

    .line 372
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V

    .line 376
    .end local v6    # "p":Landroid/graphics/Paint;
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 141
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 142
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v0, v2, v4

    aput v1, v2, v3

    .line 148
    .local v2, "touchPoint":[F
    iget-object v5, p0, Lcom/android/camera/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 149
    aget v0, v2, v4

    .line 150
    aget v1, v2, v3

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    sget-object v5, Lcom/android/camera/crop/CropView$Mode;->MOVE:Lcom/android/camera/crop/CropView$Mode;

    if-ne v4, v5, :cond_2

    .line 173
    iget v4, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    sub-float v4, v0, v4

    .line 174
    .local v4, "dx":F
    iget v5, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    sub-float v5, v1, v5

    .line 175
    .local v5, "dy":F
    iget-object v6, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v6, v4, v5}, Lcom/android/camera/crop/CropObject;->moveCurrentSelection(FF)Z

    .line 176
    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    .line 177
    iput v1, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    .line 178
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v5, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    sget-object v6, Lcom/android/camera/crop/CropView$Mode;->MOVE:Lcom/android/camera/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 164
    iget-object v5, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v5, v4}, Lcom/android/camera/crop/CropObject;->selectEdge(I)Z

    .line 165
    iput-boolean v4, p0, Lcom/android/camera/crop/CropView;->mMovingBlock:Z

    .line 166
    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    .line 167
    iput v1, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    .line 168
    sget-object v4, Lcom/android/camera/crop/CropView$Mode;->NONE:Lcom/android/camera/crop/CropView$Mode;

    iput-object v4, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    sget-object v5, Lcom/android/camera/crop/CropView$Mode;->NONE:Lcom/android/camera/crop/CropView$Mode;

    if-ne v4, v5, :cond_2

    .line 154
    iget-object v4, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/crop/CropObject;->selectEdge(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/camera/crop/CropView;->mCropObj:Lcom/android/camera/crop/CropObject;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/camera/crop/CropObject;->selectEdge(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/crop/CropView;->mMovingBlock:Z

    .line 157
    :cond_1
    iput v0, p0, Lcom/android/camera/crop/CropView;->mPrevX:F

    .line 158
    iput v1, p0, Lcom/android/camera/crop/CropView;->mPrevY:F

    .line 159
    sget-object v4, Lcom/android/camera/crop/CropView$Mode;->MOVE:Lcom/android/camera/crop/CropView$Mode;

    iput-object v4, p0, Lcom/android/camera/crop/CropView;->mState:Lcom/android/camera/crop/CropView$Mode;

    .line 183
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/crop/CropView;->invalidate()V

    .line 184
    return v3

    .line 143
    .end local v2    # "touchPoint":[F
    :cond_3
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWallpaperSpotlight(FF)V
    .locals 2
    .param p1, "spotlightX"    # F
    .param p2, "spotlightY"    # F

    .line 244
    iput p1, p0, Lcom/android/camera/crop/CropView;->mSpotX:F

    .line 245
    iput p2, p0, Lcom/android/camera/crop/CropView;->mSpotY:F

    .line 246
    iget v0, p0, Lcom/android/camera/crop/CropView;->mSpotX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/crop/CropView;->mSpotY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/crop/CropView;->mDoSpot:Z

    .line 249
    :cond_0
    return-void
.end method

.method public unsetWallpaperSpotlight()V
    .locals 1

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/crop/CropView;->mDoSpot:Z

    .line 253
    return-void
.end method
