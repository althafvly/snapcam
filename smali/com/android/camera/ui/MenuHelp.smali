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

.field private mHelp0_0:Lcom/android/camera/ui/RotateLayout;

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

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    .line 69
    sput v0, Lcom/android/camera/ui/MenuHelp;->mBottomMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/MenuHelp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x6

    const/4 v1, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mLocX:[[F

    .line 80
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mLocY:[[F

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    .line 102
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    .line 103
    return-void
.end method

.method private fillArrows(III)V
    .locals 18
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "rotation"    # I

    move-object/from16 v8, p0

    .line 150
    new-instance v0, Landroid/view/View;

    iget-object v1, v8, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 151
    .local v9, "v1":Landroid/view/View;
    new-instance v0, Landroid/view/View;

    iget-object v1, v8, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 152
    .local v10, "v2":Landroid/view/View;
    new-instance v0, Landroid/view/View;

    iget-object v1, v8, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 154
    .local v11, "v3":Landroid/view/View;
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 155
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 156
    const/4 v6, 0x0

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 157
    const/4 v12, 0x3

    new-array v0, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v1

    const/high16 v13, 0x42480000    # 50.0f

    sub-float/2addr v1, v13

    const/4 v14, 0x0

    aput v1, v0, v14

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v1

    const/4 v15, 0x1

    aput v1, v0, v15

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v1

    const/4 v7, 0x2

    aput v1, v0, v7

    .line 158
    .local v0, "x":[F
    new-array v1, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v2, v13

    aput v2, v1, v14

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v1, v15

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v1, v7

    .line 159
    .local v1, "y":[F
    iget-object v2, v8, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 163
    .end local v0    # "x":[F
    .end local v1    # "y":[F
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v16, -0x1

    move-object v0, v8

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 164
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 165
    const/4 v6, 0x0

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 166
    new-array v0, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v1, v13

    aput v1, v0, v14

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v1

    aput v1, v0, v15

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v1

    const/4 v7, 0x2

    aput v1, v0, v7

    .line 167
    .restart local v0    # "x":[F
    new-array v1, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v2, v13

    aput v2, v1, v14

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v1, v15

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v1, v7

    .line 168
    .restart local v1    # "y":[F
    iget-object v2, v8, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 171
    .end local v0    # "x":[F
    .end local v1    # "y":[F
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v16, -0x1

    move-object v0, v8

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v12, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 173
    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 174
    new-array v0, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v1

    aput v1, v0, v14

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v1

    aput v1, v0, v15

    .line 175
    .restart local v0    # "x":[F
    new-array v1, v12, [F

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v2, v3

    aput v2, v1, v14

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v1, v15

    .line 176
    .restart local v1    # "y":[F
    iget-object v2, v8, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .end local v0    # "x":[F
    .end local v1    # "y":[F
    goto :goto_0

    .line 179
    :cond_0
    move v12, v7

    :goto_0
    iget-boolean v0, v8, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    if-nez v0, :cond_1

    .line 180
    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 181
    const/4 v5, 0x4

    const/4 v6, 0x5

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 182
    const/4 v5, 0x5

    const/4 v6, 0x6

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 183
    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v1, v14

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v1, v15

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v1, v12

    .line 184
    .local v1, "x":[F
    new-array v2, v0, [F

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, v13

    aput v0, v2, v14

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v0

    aput v0, v2, v15

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr v0, v13

    aput v0, v2, v12

    move-object v0, v2

    .line 185
    .local v0, "y":[F
    iget-object v2, v8, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 188
    .end local v0    # "y":[F
    .end local v1    # "x":[F
    :cond_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 189
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 190
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 191
    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v1, v14

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v1, v15

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v1, v12

    .line 192
    .restart local v1    # "x":[F
    new-array v0, v0, [F

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v2, v13

    aput v2, v0, v14

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v0, v15

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, v13

    aput v2, v0, v12

    .line 193
    .restart local v0    # "y":[F
    iget-object v2, v8, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/Arrows;->addPath([F[F)V

    .line 196
    .end local v0    # "y":[F
    .end local v1    # "x":[F
    return-void
.end method

.method private fillHelp0_0()V
    .locals 7

    .line 322
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "tableLayout":Landroid/widget/TableLayout;
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 325
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 327
    .local v2, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e0238

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 331
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 332
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 333
    .local v3, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0239

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 341
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 342
    .local v4, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e023a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 345
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 346
    return-void
.end method

.method private fillHelp1_0()V
    .locals 8

    .line 349
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "tableLayout":Landroid/widget/TableLayout;
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    .local v2, "text1":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e023b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v3, "text2":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e023c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 363
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v4, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e023d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 368
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 370
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 371
    .local v5, "text4":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e023e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    invoke-virtual {v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 375
    return-void
.end method

.method private fillHelp3_0()V
    .locals 7

    .line 378
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "tableLayout":Landroid/widget/TableLayout;
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 380
    sget-boolean v1, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v1, :cond_0

    .line 381
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 386
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 387
    .local v2, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0240

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 391
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 392
    .local v3, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0241

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 399
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "text2":Landroid/widget/TextView;
    .end local v3    # "text3":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private fillHelp4_0()V
    .locals 8

    .line 426
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "tableLayout":Landroid/widget/TableLayout;
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 428
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 429
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 431
    .local v2, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 435
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 436
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0246

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 443
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 445
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    .local v5, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0247

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 449
    invoke-virtual {v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 450
    return-void
.end method

.method private fillHelp4_6()V
    .locals 8

    .line 402
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, "tableLayout":Landroid/widget/TableLayout;
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 404
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 405
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    .local v2, "text1":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0242

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    iget-object v4, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 411
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 413
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0243

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-object v5, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 416
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 418
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 419
    .local v5, "text3":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0244

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    iget-object v3, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 422
    invoke-virtual {v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 423
    return-void
.end method

.method private fillOk2_4()V
    .locals 4

    .line 309
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 311
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 312
    const/16 v1, 0x14

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 313
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 314
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 315
    .local v1, "text1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v2, p0, Lcom/android/camera/ui/MenuHelp;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method private setLocation(II)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getUnifiedRotation()I

    move-result v8

    .line 133
    .local v8, "rotation":I
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 135
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 144
    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/MenuHelp;->toIndex(Landroid/view/View;IIIIII)V

    .line 146
    invoke-direct {p0, p1, p2, v8}, Lcom/android/camera/ui/MenuHelp;->fillArrows(III)V

    .line 147
    return-void
.end method

.method private toIndex(Landroid/view/View;IIIIII)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "rotation"    # I
    .param p5, "index"    # I
    .param p6, "index2"    # I
    .param p7, "index3"    # I

    move-object/from16 v0, p0

    move/from16 v3, p4

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 201
    .local v5, "tw":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 202
    .local v6, "th":I
    const/4 v7, 0x0

    .local v7, "l":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "t":I
    const/4 v10, 0x0

    .line 204
    .local v10, "b":I
    const/4 v11, 0x6

    .line 205
    .local v11, "wnumber":I
    const/4 v12, 0x7

    .line 206
    .local v12, "hnumber":I
    const/4 v13, 0x0

    .line 207
    .local v13, "windex":I
    const/4 v14, 0x0

    .line 208
    .local v14, "hindex":I
    move v15, v7

    .end local v7    # "l":I
    .local v15, "l":I
    const/16 v7, 0x5a

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    const/16 v7, 0xb4

    if-eq v3, v7, :cond_1

    const/16 v7, 0x10e

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    const/4 v11, 0x7

    .line 233
    const/4 v12, 0x6

    .line 234
    sub-int v7, v11, p6

    add-int/lit8 v13, v7, -0x1

    .line 235
    move/from16 v14, p5

    goto :goto_0

    .line 225
    :cond_1
    const/4 v11, 0x6

    .line 226
    const/4 v12, 0x7

    .line 227
    sub-int v7, v11, p5

    add-int/lit8 v13, v7, -0x1

    .line 228
    sub-int v7, v12, p6

    add-int/lit8 v14, v7, -0x1

    .line 229
    goto :goto_0

    .line 218
    :cond_2
    const/4 v11, 0x7

    .line 219
    const/4 v12, 0x6

    .line 220
    move/from16 v13, p6

    .line 221
    sub-int v7, v12, p5

    add-int/lit8 v14, v7, -0x1

    .line 222
    goto :goto_0

    .line 211
    :cond_3
    const/4 v11, 0x6

    .line 212
    const/4 v12, 0x7

    .line 213
    move/from16 v13, p5

    .line 214
    move/from16 v14, p6

    .line 215
    nop

    .line 238
    :goto_0
    div-int v7, p3, v12

    .line 239
    .local v7, "boxh":I
    div-int v16, p2, v11

    .line 240
    .local v16, "boxw":I
    const/16 v17, 0x2

    mul-int v18, v17, v13

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v16

    div-int/lit8 v18, v18, 0x2

    .line 241
    .local v18, "cx":I
    mul-int v19, v17, v14

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v7

    div-int/lit8 v19, v19, 0x2

    .line 243
    .local v19, "cy":I
    if-nez p6, :cond_7

    sget v20, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    if-eqz v20, :cond_7

    .line 244
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_6

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_4

    .line 255
    sget v4, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v19, v4, 0x2

    goto :goto_1

    .line 252
    :cond_4
    sget v4, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int v18, p2, v4

    .line 253
    goto :goto_1

    .line 249
    :cond_5
    sget v4, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int v19, p3, v4

    .line 250
    goto :goto_1

    .line 246
    :cond_6
    sget v4, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    div-int/lit8 v18, v4, 0x2

    .line 247
    nop

    .line 260
    :cond_7
    :goto_1
    div-int/lit8 v4, v5, 0x2

    sub-int v4, v18, v4

    .line 261
    .end local v15    # "l":I
    .local v4, "l":I
    div-int/lit8 v15, v5, 0x2

    add-int v8, v18, v15

    .line 262
    div-int/lit8 v15, v6, 0x2

    sub-int v9, v19, v15

    .line 263
    div-int/lit8 v15, v6, 0x2

    add-int v10, v19, v15

    .line 265
    const/4 v1, -0x1

    move/from16 v2, p7

    if-eq v2, v1, :cond_8

    .line 266
    div-int/lit8 v1, v3, 0x5a

    .line 267
    .local v1, "idx1":I
    move v15, v2

    .line 268
    .local v15, "idx2":I
    iget-object v2, v0, Lcom/android/camera/ui/MenuHelp;->mLocX:[[F

    aget-object v2, v2, v1

    int-to-float v3, v4

    aput v3, v2, v15

    .line 269
    iget-object v2, v0, Lcom/android/camera/ui/MenuHelp;->mLocY:[[F

    aget-object v2, v2, v1

    int-to-float v3, v9

    aput v3, v2, v15

    .line 271
    .end local v1    # "idx1":I
    .end local v15    # "idx2":I
    :cond_8
    move-object/from16 v1, p1

    invoke-virtual {v1, v4, v9, v8, v10}, Landroid/view/View;->layout(IIII)V

    .line 272
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .line 288
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 289
    const v0, 0x7f0d006a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mBackgroundView:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    .line 292
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp0_0()V

    .line 293
    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    .line 294
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp1_0()V

    .line 295
    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    .line 296
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp3_0()V

    .line 297
    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    .line 298
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp4_6()V

    .line 299
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    .line 300
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillOk2_4()V

    .line 302
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    .line 303
    invoke-direct {p0}, Lcom/android/camera/ui/MenuHelp;->fillHelp4_0()V

    .line 305
    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Arrows;

    iput-object v0, p0, Lcom/android/camera/ui/MenuHelp;->mArrows:Lcom/android/camera/ui/Arrows;

    .line 306
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 120
    sub-int/2addr p4, p2

    .line 121
    sub-int/2addr p5, p3

    .line 122
    const/4 p2, 0x0

    .line 123
    const/4 p3, 0x0

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/MenuHelp;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MenuHelp;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 124
    .end local v1    # "v":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/MenuHelp;->setLocation(II)V

    .line 129
    return-void
.end method

.method public setForCamera2(Z)V
    .locals 0
    .param p1, "forCamera2"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/android/camera/ui/MenuHelp;->forCamera2:Z

    .line 111
    return-void
.end method

.method public setMargins(II)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 114
    sput p1, Lcom/android/camera/ui/MenuHelp;->mTopMargin:I

    .line 115
    sput p2, Lcom/android/camera/ui/MenuHelp;->mBottomMargin:I

    .line 116
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 275
    iput p1, p0, Lcom/android/camera/ui/MenuHelp;->mOrientation:I

    .line 277
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp0_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp1_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp3_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_6:Lcom/android/camera/ui/RotateLayout;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mOk2_4:Lcom/android/camera/ui/RotateLayout;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/MenuHelp;->mHelp4_0:Lcom/android/camera/ui/RotateLayout;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 281
    .local v0, "layouts":[Lcom/android/camera/ui/RotateLayout;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 282
    .local v3, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 281
    .end local v3    # "l":Lcom/android/camera/ui/RotateLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method
