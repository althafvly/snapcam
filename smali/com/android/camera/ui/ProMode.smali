.class public Lcom/android/camera/ui/ProMode;
.super Landroid/view/View;
.source "ProMode.java"


# static fields
.field private static final BLUE:I = -0xb96c05

.field private static final DOT_SIZE:I = 0xa

.field private static final DRAG_X_THRESHOLD:I = 0x1e

.field private static final DRAG_Y_THRESHOLD:I = 0x64

.field public static final EXPOSURE_MODE:I = 0x0

.field public static final ISO_MODE:I = 0x3

.field public static final MANUAL_MODE:I = 0x1

.field public static final NO_MODE:I = -0x1

.field private static final SELECTED_DOT_SIZE:I = 0x14

.field private static final WB_ICON_SIZE:I = 0x50

.field public static final WHITE_BALANCE_MODE:I = 0x2

.field private static final wbIcons:[I

.field private static final wbIconsBlue:[I


# instance fields
.field private curveCoordinate:[F

.field private mAddedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThreshold:F

.field private mContext:Landroid/content/Context;

.field private mCurveHeight:I

.field private mCurveLeft:I

.field private mCurveMeasure:Landroid/graphics/PathMeasure;

.field private mCurvePath:Landroid/graphics/Path;

.field private mCurveRight:I

.field private mCurveY:I

.field private mHeight:I

.field private mIndex:I

.field private mMode:I

.field private mNums:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/ViewGroup;

.field private mPoints:[Landroid/graphics/Point;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mSlider:F

.field private mStride:I

.field private mUI:Lcom/android/camera/ui/OneUICameraControls;

.field private mWidth:I

.field private minFocus:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/ui/ProMode;->wbIcons:[I

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/ProMode;->wbIconsBlue:[I

    return-void

    :array_0
    .array-data 4
        0x7f020002
        0x7f02013f
        0x7f020045
        0x7f02018c
        0x7f020037
    .end array-data

    :array_1
    .array-data 4
        0x7f020003
        0x7f020140
        0x7f020046
        0x7f02018d
        0x7f020038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    .line 82
    iput v0, p0, Lcom/android/camera/ui/ProMode;->minFocus:F

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 98
    return-void
.end method

.method private currentKey()Ljava/lang/String;
    .locals 1

    .line 281
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->getKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findButton(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 366
    .local v1, "xdiff":F
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 367
    .local v2, "ydiff":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 368
    .local v3, "dist":F
    iget v4, p0, Lcom/android/camera/ui/ProMode;->mClickThreshold:F

    iget v5, p0, Lcom/android/camera/ui/ProMode;->mClickThreshold:F

    mul-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    return v0

    .line 364
    .end local v1    # "xdiff":F
    .end local v2    # "ydiff":F
    .end local v3    # "dist":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .line 269
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 275
    :pswitch_0
    const-string v0, "pref_camera2_iso_key"

    return-object v0

    .line 273
    :pswitch_1
    const-string v0, "pref_camera2_whitebalance_key"

    return-object v0

    .line 271
    :cond_0
    const-string v0, "pref_camera2_exposure_key"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSlider(FF)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 374
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    add-int/lit8 v0, v0, -0x1e

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 377
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float p1, v0

    .line 378
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float p1, v0

    .line 379
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 381
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private init()V
    .locals 3

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->init(I)V

    .line 102
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->init(I)V

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ProMode;->init(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    const-string v1, "Manual"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method private init(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ProMode;->getKey(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 112
    .local v2, "cc":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method private removeViews()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 338
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    .line 344
    return-void
.end method

.method private setIndex(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "force"    # Z

    .line 308
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 309
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 311
    .local v0, "v":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 312
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 313
    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 314
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v2, v1, :cond_2

    .line 315
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lcom/android/camera/ui/ProMode;->wbIcons:[I

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    .line 321
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->currentKey()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 323
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 324
    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    const v3, -0xb96c05

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 325
    :cond_3
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 326
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v3, v1, :cond_4

    .line 327
    move-object v1, v2

    check-cast v1, Landroid/widget/ImageView;

    sget-object v3, Lcom/android/camera/ui/ProMode;->wbIconsBlue:[I

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    .line 331
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 332
    .local v1, "cc":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    iget v5, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    aget-object v5, v1, v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->invalidate()V

    .line 334
    return-void
.end method

.method private updateSlider(I)V
    .locals 8
    .param p1, "n"    # I

    .line 285
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    .line 286
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mStride:I

    .line 287
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mStride:I

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mClickThreshold:F

    .line 288
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    .line 290
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 291
    .local v1, "slide":F
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    if-ge v3, v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    iget-object v5, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    int-to-float v6, v3

    mul-float/2addr v6, v1

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 293
    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    aget v6, v6, v0

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    aget v7, v7, v2

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v4, v3

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->invalidate()V

    .line 297
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    return v0
.end method

.method public initialize(Lcom/android/camera/ui/OneUICameraControls;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/camera/ui/OneUICameraControls;

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/ProMode;->mParent:Landroid/view/ViewGroup;

    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    .line 151
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->init()V

    .line 152
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    const v4, -0xb96c05

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v1, v1

    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v1, v1

    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->curveCoordinate:[F

    aget v1, v1, v6

    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 136
    :cond_1
    nop

    .local v3, "i":I
    :goto_0
    move v0, v3

    .end local v3    # "i":I
    .local v0, "i":I
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mNums:I

    if-ge v0, v3, :cond_3

    .line 137
    iget v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    if-ne v0, v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v3, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    :goto_1
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 146
    .end local v3    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 156
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 157
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    .line 158
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mHeight:I

    .line 160
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    .line 161
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    .line 162
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mWidth:I

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mCurveHeight:I

    .line 163
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mHeight:I

    int-to-double v0, v0

    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    .line 165
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 166
    .local v0, "cx":F
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    int-to-float v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 169
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mCurvePath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lcom/android/camera/ui/ProMode;->mCurveMeasure:Landroid/graphics/PathMeasure;

    .line 170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 348
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/ProMode;->getSlider(FF)F

    move-result v0

    .line 350
    .local v0, "slider":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 351
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ProMode;->setSlider(FZ)V

    .line 353
    .end local v0    # "slider":F
    :cond_0
    nop

    .line 360
    return v2

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/ProMode;->findButton(FF)I

    move-result v0

    .line 355
    .local v0, "idx":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ProMode;->setIndex(IZ)V

    .line 358
    :cond_2
    return v2
.end method

.method public reinit()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->init()V

    .line 174
    return-void
.end method

.method public setMode(I)V
    .locals 14
    .param p1, "mode"    # I

    .line 193
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    .line 194
    .local v0, "lastMode":I
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    .line 195
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_focus_distance_key"

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/android/camera/SettingsManager;->setFocusDistance(Ljava/lang/String;ZFF)V

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->removeViews()V

    .line 201
    iget v2, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 202
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ProMode;->setVisibility(I)V

    .line 203
    return-void

    .line 205
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ProMode;->setVisibility(I)V

    .line 207
    iput v3, p0, Lcom/android/camera/ui/ProMode;->mIndex:I

    .line 208
    invoke-direct {p0}, Lcom/android/camera/ui/ProMode;->currentKey()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "key":Ljava/lang/String;
    iget v5, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v1, :cond_4

    .line 210
    iget-object v5, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 211
    invoke-virtual {v7}, Lcom/android/camera/SettingsManager;->getCurrentCameraId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/camera/SettingsManager;->getMinimumFocusDistance(I)F

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ProMode;->minFocus:F

    .line 212
    iget-object v5, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_focus_distance_key"

    invoke-virtual {v5, v7}, Lcom/android/camera/SettingsManager;->getFocusValue(Ljava/lang/String;)F

    move-result v5

    .line 213
    .local v5, "value":F
    invoke-virtual {p0, v5, v1}, Lcom/android/camera/ui/ProMode;->setSlider(FZ)V

    .line 214
    iget v7, p0, Lcom/android/camera/ui/ProMode;->mCurveRight:I

    iget v8, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    sub-int/2addr v7, v8

    .line 215
    .local v7, "stride":I
    move v8, v2

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_3

    .line 216
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v9, "v":Landroid/widget/TextView;
    const-string v10, "infinity"

    .line 218
    .local v10, "s":Ljava/lang/String;
    if-ne v8, v1, :cond_2

    const-string v10, "macro"

    .line 219
    :cond_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-virtual {v9, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 222
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    .line 223
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 224
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget v12, p0, Lcom/android/camera/ui/ProMode;->mCurveLeft:I

    mul-int v13, v8, v7

    add-int/2addr v12, v13

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v6

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setX(F)V

    .line 226
    iget v12, p0, Lcom/android/camera/ui/ProMode;->mCurveY:I

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    mul-int/2addr v13, v6

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setY(F)V

    .line 227
    iget-object v12, p0, Lcom/android/camera/ui/ProMode;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    iget-object v12, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v9    # "v":Landroid/widget/TextView;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 230
    .end local v5    # "value":F
    .end local v7    # "stride":I
    .end local v8    # "i":I
    :cond_3
    goto/16 :goto_3

    .line 231
    :cond_4
    if-nez v4, :cond_5

    return-void

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v5, v4}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 233
    .local v5, "cc":[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v7, v4}, Lcom/android/camera/SettingsManager;->getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v7

    array-length v7, v7

    .line 234
    .local v7, "length":I
    iget-object v8, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v8, v4}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v8

    .line 235
    .local v8, "index":I
    invoke-direct {p0, v7}, Lcom/android/camera/ui/ProMode;->updateSlider(I)V

    .line 237
    move v9, v2

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_7

    .line 239
    iget v10, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    if-ne v10, v6, :cond_6

    .line 240
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v10, "v":Landroid/view/View;
    move-object v11, v10

    check-cast v11, Landroid/widget/ImageView;

    sget-object v12, Lcom/android/camera/ui/ProMode;->wbIcons:[I

    aget v12, v12, v9

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v12, 0x50

    invoke-direct {v11, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 244
    .restart local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v12, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, -0x28

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setX(F)V

    .line 246
    iget-object v12, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/lit16 v12, v12, -0xa0

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setY(F)V

    .line 247
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_2

    .line 248
    .end local v10    # "v":Landroid/view/View;
    :cond_6
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/camera/ui/ProMode;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 249
    .restart local v10    # "v":Landroid/view/View;
    move-object v11, v10

    check-cast v11, Landroid/widget/TextView;

    aget-object v12, v5, v9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    move-object v11, v10

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    invoke-virtual {v10, v2, v2}, Landroid/view/View;->measure(II)V

    .line 252
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 253
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 254
    .restart local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v12, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v6

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setX(F)V

    .line 256
    iget-object v12, p0, Lcom/android/camera/ui/ProMode;->mPoints:[Landroid/graphics/Point;

    aget-object v12, v12, v9

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    mul-int/2addr v13, v6

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setY(F)V

    .line 260
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    iget-object v11, p0, Lcom/android/camera/ui/ProMode;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 261
    iget-object v11, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v10    # "v":Landroid/view/View;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 263
    .end local v9    # "i":I
    :cond_7
    invoke-direct {p0, v8, v1}, Lcom/android/camera/ui/ProMode;->setIndex(IZ)V

    .line 265
    .end local v5    # "cc":[Ljava/lang/CharSequence;
    .end local v7    # "length":I
    .end local v8    # "index":I
    :goto_3
    iget v1, p0, Lcom/android/camera/ui/ProMode;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ProMode;->setOrientation(I)V

    .line 266
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .line 177
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mOrientation:I

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 179
    iget v0, p0, Lcom/android/camera/ui/ProMode;->mOrientation:I

    .line 180
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit16 v0, v0, 0xb4

    .line 181
    :cond_1
    rem-int/lit16 v0, v0, 0x168

    .line 182
    iget-object v1, p0, Lcom/android/camera/ui/ProMode;->mAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 183
    .local v2, "v":Landroid/view/View;
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 184
    .end local v2    # "v":Landroid/view/View;
    goto :goto_0

    .line 186
    .end local v0    # "rotation":I
    :cond_2
    return-void
.end method

.method public setSlider(FZ)V
    .locals 4
    .param p1, "slider"    # F
    .param p2, "forceNotify"    # Z

    .line 300
    iput p1, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_focus_distance_key"

    iget v2, p0, Lcom/android/camera/ui/ProMode;->mSlider:F

    iget v3, p0, Lcom/android/camera/ui/ProMode;->minFocus:F

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/SettingsManager;->setFocusDistance(Ljava/lang/String;ZFF)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/ProMode;->mUI:Lcom/android/camera/ui/OneUICameraControls;

    iget v1, p0, Lcom/android/camera/ui/ProMode;->mMode:I

    const-string v2, "Manual"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->updateProModeText(ILjava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/camera/ui/ProMode;->invalidate()V

    .line 305
    return-void
.end method
