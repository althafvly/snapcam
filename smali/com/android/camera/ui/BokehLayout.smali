.class public Lcom/android/camera/ui/BokehLayout;
.super Lcom/android/camera/ui/RotatableLayout;
.source "BokehLayout.java"


# static fields
.field private static final PROJECT_1820:Ljava/lang/String; = "ZQL1820"

.field private static final PROJECT_1830:Ljava/lang/String; = "ZQL1830"

.field private static final PROJECT_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BokehLayout"


# instance fields
.field private mBokeh:Lcom/android/camera/ui/RotateLayout;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mlocationy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "ro.hq.project"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/BokehLayout;->PROJECT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/BokehLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private toIndex(Landroid/view/View;III)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 100
    .local v8, "tw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 101
    .local v7, "th":I
    const/4 v3, 0x0

    .local v3, "l":I
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v0, 0x0

    .line 102
    .local v0, "b":I
    const/4 v1, 0x0

    .line 103
    .local v1, "cx":I
    const/4 v2, 0x0

    .line 108
    .local v2, "cy":I
    sparse-switch p4, :sswitch_data_0

    .line 131
    :goto_0
    div-int/lit8 v9, v8, 0x2

    sub-int v3, v1, v9

    .line 132
    div-int/lit8 v9, v8, 0x2

    add-int v5, v1, v9

    .line 133
    div-int/lit8 v9, v7, 0x2

    sub-int v6, v2, v9

    .line 134
    div-int/lit8 v9, v7, 0x2

    add-int v0, v2, v9

    .line 135
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 136
    return-void

    .line 110
    :sswitch_0
    iget-object v9, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 111
    iget-object v9, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 112
    goto :goto_0

    .line 115
    :sswitch_1
    iget-object v9, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    iget v2, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 117
    goto :goto_0

    .line 120
    :sswitch_2
    iget-object v9, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 121
    iget-object v9, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    goto :goto_0

    .line 125
    :sswitch_3
    iget-object v9, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00ad

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 126
    iget v2, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 179
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BokehLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    .line 180
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
    .line 89
    sub-int/2addr p4, p2

    .line 90
    sub-int/2addr p5, p3

    .line 91
    const/4 p2, 0x0

    .line 92
    const/4 p3, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    iget v3, p0, Lcom/android/camera/ui/BokehLayout;->mOrientation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/BokehLayout;->toIndex(Landroid/view/View;III)V

    .line 94
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 138
    iput p1, p0, Lcom/android/camera/ui/BokehLayout;->mOrientation:I

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 141
    return-void
.end method

.method public setSizeY(I)V
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/16 v2, 0x5a0

    .line 144
    sget-object v0, Lcom/android/camera/ui/BokehLayout;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1820"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    if-ne v2, p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 174
    :goto_0
    return-void

    .line 147
    :cond_0
    const/16 v0, 0x438

    if-ne v0, p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 152
    :cond_2
    sget-object v0, Lcom/android/camera/ui/BokehLayout;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    if-ne v2, p1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 155
    :cond_3
    const/16 v0, 0x3c0

    if-ne v0, p1, :cond_4

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 157
    :cond_4
    const/16 v0, 0x500

    if-ne v0, p1, :cond_5

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 159
    :cond_5
    const/16 v0, 0x2d0

    if-ne v0, p1, :cond_6

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 161
    :cond_6
    const/16 v0, 0x280

    if-ne v0, p1, :cond_7

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto/16 :goto_0

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto/16 :goto_0

    .line 167
    :cond_8
    if-ne v2, p1, :cond_9

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto/16 :goto_0

    .line 170
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto/16 :goto_0
.end method
