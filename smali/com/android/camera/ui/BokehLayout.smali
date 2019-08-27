.class public Lcom/android/camera/ui/BokehLayout;
.super Lcom/android/camera/ui/RotatableLayout;
.source "BokehLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BokehLayout"


# instance fields
.field private mBokeh:Lcom/android/camera/ui/RotateLayout;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mlocationy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/BokehLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotatableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 74
    iput-object p1, p0, Lcom/android/camera/ui/BokehLayout;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private toIndex(Landroid/view/View;III)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "orientation"    # I

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 95
    .local v0, "tw":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 96
    .local v1, "th":I
    const/4 v2, 0x0

    .local v2, "l":I
    const/4 v3, 0x0

    .local v3, "r":I
    const/4 v4, 0x0

    .local v4, "t":I
    const/4 v5, 0x0

    .line 97
    .local v5, "b":I
    const/4 v6, 0x0

    .line 98
    .local v6, "cx":I
    const/4 v7, 0x0

    .line 99
    .local v7, "cy":I
    if-eqz p4, :cond_3

    const/16 v8, 0x5a

    if-eq p4, v8, :cond_2

    const/16 v8, 0xb4

    if-eq p4, v8, :cond_1

    const/16 v8, 0x10e

    if-eq p4, v8, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const/16 v6, 0x3de

    .line 117
    iget v7, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 111
    :cond_1
    const/16 v6, 0x21c

    .line 112
    const/16 v7, 0xf0

    .line 113
    goto :goto_0

    .line 106
    :cond_2
    const/16 v6, 0x5a

    .line 107
    iget v7, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 108
    goto :goto_0

    .line 101
    :cond_3
    const/16 v6, 0x21c

    .line 102
    const/16 v7, 0xf0

    .line 103
    nop

    .line 121
    :goto_0
    div-int/lit8 v8, v0, 0x2

    sub-int v2, v6, v8

    .line 122
    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v6

    .line 123
    .end local v3    # "r":I
    .local v8, "r":I
    div-int/lit8 v3, v1, 0x2

    sub-int v3, v7, v3

    .line 124
    .end local v4    # "t":I
    .local v3, "t":I
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v7

    .line 125
    .end local v5    # "b":I
    .local v4, "b":I
    invoke-virtual {p1, v2, v3, v8, v4}, Landroid/view/View;->layout(IIII)V

    .line 126
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/android/camera/ui/RotatableLayout;->onFinishInflate()V

    .line 143
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BokehLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    .line 144
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 84
    sub-int/2addr p4, p2

    .line 85
    sub-int/2addr p5, p3

    .line 86
    const/4 p2, 0x0

    .line 87
    const/4 p3, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    iget v3, p0, Lcom/android/camera/ui/BokehLayout;->mOrientation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/BokehLayout;->toIndex(Landroid/view/View;III)V

    .line 89
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 128
    iput p1, p0, Lcom/android/camera/ui/BokehLayout;->mOrientation:I

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/BokehLayout;->mBokeh:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 131
    return-void
.end method

.method public setSizeY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 133
    const/16 v0, 0x5a0

    if-ne v0, p1, :cond_0

    .line 134
    const/16 v0, 0x384

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    goto :goto_0

    .line 136
    :cond_0
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/camera/ui/BokehLayout;->mlocationy:I

    .line 138
    :goto_0
    return-void
.end method
