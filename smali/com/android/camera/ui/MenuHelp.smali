.class public Lcom/android/camera/ui/MenuHelp;
.super Lcom/android/camera/ui/RotatableLayout;
.source "MenuHelp.java"


# static fields
.field private static final HEIGHT_GRID:I = 0x7

.field private static final HELP_0_0_INDEX:I = 0x0

.field private static final HELP_1_0_INDEX:I = 0x1

.field private static final HELP_3_0_INDEX:I = 0x2

.field private static final HELP_4_0_INDEX:I = 0x5

.field private static final HELP_4_6_INDEX:I = 0x3

.field private static final LAYOUT_ARROW_HEIGHT_DEVIATION:I = 0x23

.field private static final LAYOUT_ARROW_WIDTH_DEVIATION:I = 0x14

.field private static final MAX_INDEX:I = 0x6

.field private static final OK_2_4_INDEX:I = 0x4

.field private static final POINT_MARGIN:I = 0x32

.field private static final TAG:Ljava/lang/String; = "MenuHelp"

.field private static final WIDTH_GRID:I = 0x6

.field private static mBottomMargin:I

.field private static mTopMargin:I


# instance fields
.field private forCamera2:Z

.field private mArrows:Lcom/android/camera/ui/Arrows;

.field private mBackgroundView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentWidth:F

.field private mHelp0_0:Lcom/android/camera/ui/RotateLayout;

.field private mHelp1Location:F

.field private mHelp1_0:Lcom/android/camera/ui/RotateLayout;

.field private mHelp3_0:Lcom/android/camera/ui/RotateLayout;

.field private mHelp4_0:Lcom/android/camera/ui/RotateLayout;

.field private mHelp4_6:Lcom/android/camera/ui/RotateLayout;

.field private mLocX:[[F

.field private mLocY:[[F

.field private mOk2_4:Lcom/android/camera/ui/RotateLayout;

.field private mOrientation:I

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput v0, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    .line 69
    sput v0, Lcom/android/camera/ui/MenuHelp;->mBottomMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/MenuHelp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mLocX:[[F

    .line 80
    filled-new-array {v3, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mLocY:[[F

    .line 97
    iput-boolean v2, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    .line 107
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1Location:F

    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    .line 113
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    .line 117
    return-void
.end method

.method private fillArrows(III)V
    .locals 14
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 177
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 178
    .local v1, "v1":Landroid/view/View;
    new-instance v10, Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 179
    .local v10, "v2":Landroid/view/View;
    new-instance v11, Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 181
    .local v11, "v3":Landroid/view/View;
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, -0x1

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 182
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v10

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 184
    const/high16 v0, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v4, p1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v11

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 186
    const/4 v0, 0x3

    new-array v12, v0, [F

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    aput v2, v12, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    .line 187
    .local v12, "x":[F
    const/4 v0, 0x3

    new-array v13, v0, [F

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    aput v2, v13, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v13, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v13, v0

    .line 188
    .local v13, "y":[F
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 193
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 194
    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v10

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 195
    const/high16 v0, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v4, p1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v5, p2, v0

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v11

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 197
    const/4 v0, 0x3

    new-array v12, v0, [F

    .end local v12    # "x":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v12, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    .line 198
    .restart local v12    # "x":[F
    const/4 v0, 0x3

    new-array v13, v0, [F

    .end local v13    # "y":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v13, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v13, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    aput v2, v13, v0

    .line 202
    .restart local v13    # "y":[F
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 205
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 208
    const/high16 v0, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v4, p1, v0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v10

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 210
    const/4 v0, 0x2

    new-array v12, v0, [F

    .end local v12    # "x":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    .line 211
    .restart local v12    # "x":[F
    const/4 v0, 0x2

    new-array v13, v0, [F

    .end local v13    # "y":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v2, v3

    aput v2, v13, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v13, v0

    .line 212
    .restart local v13    # "y":[F
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    if-nez v0, :cond_1

    .line 216
    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 217
    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v10

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 219
    const/high16 v0, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v4, p1, v0

    const/high16 v0, 0x420c0000    # 35.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v5, p2, v0

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v11

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 221
    const/4 v0, 0x3

    new-array v12, v0, [F

    .end local v12    # "x":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v12, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v12, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    .line 222
    .restart local v12    # "x":[F
    const/4 v0, 0x3

    new-array v13, v0, [F

    .end local v13    # "y":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v13, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v13, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    aput v2, v13, v0

    .line 223
    .restart local v13    # "y":[F
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 226
    :cond_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, -0x1

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 227
    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v10

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 228
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v11

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 229
    const/4 v0, 0x3

    new-array v12, v0, [F

    .end local v12    # "x":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v12, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v12, v0

    .line 230
    .restart local v12    # "x":[F
    const/4 v0, 0x3

    new-array v13, v0, [F

    .end local v13    # "y":[F
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    aput v2, v13, v0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v13, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    aput v2, v13, v0

    .line 231
    .restart local v13    # "y":[F
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 234
    return-void
.end method

.method private fillHelp0_0()V
    .locals 8

    .prologue
    const v7, 0x7f0a002f

    .line 360
    new-instance v1, Landroid/widget/TableLayout;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 361
    .local v1, "tableLayout":Landroid/widget/TableLayout;
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 362
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v2, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0242

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 370
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 371
    .local v3, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0243

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 379
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 380
    .local v4, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0244

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 383
    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private fillHelp1_0()V
    .locals 10

    .prologue
    const v9, 0x7f0a0032

    .line 387
    new-instance v1, Landroid/widget/TableLayout;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .local v1, "tableLayout":Landroid/widget/TableLayout;
    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 391
    .local v2, "text1":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0245

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 394
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    .local v3, "text2":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0246

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 401
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 403
    .local v4, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0247

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 406
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 408
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 409
    .local v5, "text4":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0248

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 412
    invoke-virtual {v1, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 413
    return-void
.end method

.method private fillHelp3_0()V
    .locals 7

    .prologue
    const v6, 0x7f0a0037

    .line 416
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "tableLayout":Landroid/widget/TableLayout;
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 418
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_0

    .line 419
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 420
    .local v1, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0249

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 424
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 425
    .local v2, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e024a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 428
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 429
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 430
    .local v3, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e024b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 435
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 437
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "text2":Landroid/widget/TextView;
    .end local v3    # "text3":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private fillHelp4_0()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 464
    new-instance v1, Landroid/widget/TableLayout;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 465
    .local v1, "tableLayout":Landroid/widget/TableLayout;
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 466
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 467
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 469
    .local v2, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e024f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 473
    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 474
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 475
    .local v3, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0250

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 481
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 483
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 484
    .local v4, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0251

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 487
    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 488
    return-void
.end method

.method private fillHelp4_6()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 440
    new-instance v1, Landroid/widget/TableLayout;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 441
    .local v1, "tableLayout":Landroid/widget/TableLayout;
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 442
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 444
    .local v2, "text1":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e024c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 449
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 451
    .local v3, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e024d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 456
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 457
    .local v4, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e024e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 460
    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 461
    return-void
.end method

.method private fillOk2_4()V
    .locals 5

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x14

    .line 347
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 349
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 350
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 351
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 352
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    return-void
.end method

.method private setLocation(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getUnifiedRotation()I

    move-result v4

    .line 151
    .local v4, "rotation":I
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 152
    .local v9, "mHelp0_0_width":I
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 153
    .local v8, "mHelp0_0_height":I
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    add-int v2, p1, v9

    add-int v3, p2, v8

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    iget v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1Location:F

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v2, p1, v0

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 159
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    const/high16 v0, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/android/camera/ui/MenuHelp;->mCurrentWidth:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v2, p1, v0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    if-nez v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    add-int/lit8 v2, p1, -0x78

    add-int/lit8 v3, p2, 0x28

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 173
    invoke-direct {p0, p1, p2, v4}, Lcom/android/camera/ui/MenuHelp;->fillArrows(III)V

    .line 174
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0
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
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 239
    .local v16, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 240
    .local v15, "th":I
    const/4 v11, 0x0

    .local v11, "l":I
    const/4 v13, 0x0

    .local v13, "r":I
    const/4 v14, 0x0

    .local v14, "t":I
    const/4 v2, 0x0

    .line 242
    .local v2, "b":I
    const/16 v18, 0x6

    .line 243
    .local v18, "wnumber":I
    const/4 v8, 0x7

    .line 244
    .local v8, "hnumber":I
    const/16 v17, 0x0

    .line 245
    .local v17, "windex":I
    const/4 v7, 0x0

    .line 246
    .local v7, "hindex":I
    sparse-switch p4, :sswitch_data_0

    .line 276
    :goto_0
    div-int v3, p3, v8

    .line 277
    .local v3, "boxh":I
    div-int v4, p2, v18

    .line 278
    .local v4, "boxw":I
    mul-int/lit8 v19, v17, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v4

    div-int/lit8 v5, v19, 0x2

    .line 279
    .local v5, "cx":I
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v3

    div-int/lit8 v6, v19, 0x2

    .line 281
    .local v6, "cy":I
    if-nez p6, :cond_0

    sget v19, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    if-eqz v19, :cond_0

    .line 282
    sparse-switch p4, :sswitch_data_1

    .line 293
    sget v19, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v6, v19, 0x2

    .line 298
    :cond_0
    :goto_1
    div-int/lit8 v19, v16, 0x2

    sub-int v11, v5, v19

    .line 299
    div-int/lit8 v19, v16, 0x2

    add-int v13, v5, v19

    .line 300
    div-int/lit8 v19, v15, 0x2

    sub-int v14, v6, v19

    .line 301
    div-int/lit8 v19, v15, 0x2

    add-int v2, v6, v19

    .line 303
    const/16 v19, -0x1

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 304
    div-int/lit8 v9, p4, 0x5a

    .line 305
    .local v9, "idx1":I
    move/from16 v10, p7

    .line 306
    .local v10, "idx2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/MenuHelp;->mLocX:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    int-to-float v0, v11

    move/from16 v20, v0

    aput v20, v19, v10

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/MenuHelp;->mLocY:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v19, v10

    .line 309
    .end local v9    # "idx1":I
    .end local v10    # "idx2":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v13, v2}, Landroid/view/View;->layout(IIII)V

    .line 310
    return-void

    .line 249
    .end local v3    # "boxh":I
    .end local v4    # "boxw":I
    .end local v5    # "cx":I
    .end local v6    # "cy":I
    :sswitch_0
    const/16 v18, 0x6

    .line 250
    const/4 v8, 0x7

    .line 251
    move/from16 v17, p5

    .line 252
    move/from16 v7, p6

    .line 253
    goto :goto_0

    .line 256
    :sswitch_1
    const/16 v18, 0x7

    .line 257
    const/4 v8, 0x6

    .line 258
    move/from16 v17, p6

    .line 259
    sub-int v19, v8, p5

    add-int/lit8 v7, v19, -0x1

    .line 260
    goto :goto_0

    .line 263
    :sswitch_2
    const/16 v18, 0x6

    .line 264
    const/4 v8, 0x7

    .line 265
    sub-int v19, v18, p5

    add-int/lit8 v17, v19, -0x1

    .line 266
    sub-int v19, v8, p6

    add-int/lit8 v7, v19, -0x1

    .line 267
    goto :goto_0

    .line 270
    :sswitch_3
    const/16 v18, 0x7

    .line 271
    const/4 v8, 0x6

    .line 272
    sub-int v19, v18, p6

    add-int/lit8 v17, v19, -0x1

    .line 273
    move/from16 v7, p5

    goto/16 :goto_0

    .line 284
    .restart local v3    # "boxh":I
    .restart local v4    # "boxw":I
    .restart local v5    # "cx":I
    .restart local v6    # "cy":I
    :sswitch_4
    sget v19, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v5, v19, 0x2

    .line 285
    goto :goto_1

    .line 287
    :sswitch_5
    sget v19, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v19, v19, 0x2

    sub-int v6, p3, v19

    .line 288
    goto :goto_1

    .line 290
    :sswitch_6
    sget v19, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v19, v19, 0x2

    sub-int v5, p2, v19

    .line 291
    goto :goto_1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 282
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_4
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 327
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mBackgroundView:Landroid/view/View;

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mBackgroundView:Landroid/view/View;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 329
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    .line 330
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp0_0()V

    .line 331
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    .line 332
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp1_0()V

    .line 333
    const v0, 0x7f0d00a4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    .line 334
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp3_0()V

    .line 335
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    .line 336
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp4_6()V

    .line 337
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    .line 338
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillOk2_4()V

    .line 340
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    .line 341
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp4_0()V

    .line 343
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Arrows;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    .line 344
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 137
    sub-int/2addr p4, p2

    .line 138
    sub-int/2addr p5, p3

    .line 139
    const/4 p2, 0x0

    .line 140
    const/4 p3, 0x0

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/MenuHelp;->setLocation(II)V

    .line 146
    return-void
.end method

.method public setForCamera2(Z)V
    .locals 0
    .param p1, "forCamera2"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    .line 128
    return-void
.end method

.method public setMargins(II)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 131
    sput p1, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    .line 132
    sput p2, Lcom/android/camera/ui/MenuHelp;->mBottomMargin:I

    .line 133
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 313
    iput p1, p0, Lcom/android/camera/ui/MenuHelp;->mOrientation:I

    .line 315
    const/4 v3, 0x6

    new-array v1, v3, [Lcom/android/camera/ui/RotateLayout;

    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    aput-object v4, v1, v3

    .line 319
    .local v1, "layouts":[Lcom/android/camera/ui/RotateLayout;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 320
    .local v0, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_0
    return-void
.end method
