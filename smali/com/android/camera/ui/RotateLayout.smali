.class public Lcom/android/camera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field protected mChild:Landroid/view/View;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 42
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 43
    return-void
.end method

.method private setupChild(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 59
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateLayout;->setupChild(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/RotateLayout;->setupChild(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "change"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 71
    sub-int v0, p4, p2

    .line 72
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 73
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getPaddingTop()I

    move-result v2

    .line 74
    .local v2, "p":I
    iget v3, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    if-eqz v3, :cond_1

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    sub-int v4, v1, v2

    sub-int v5, v0, v2

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 78
    nop

    .line 84
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 88
    const/4 v0, 0x0

    .local v0, "w":I
    const/4 v1, 0x0

    .local v1, "h":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getPaddingTop()I

    move-result v2

    .line 89
    .local v2, "p":I
    iget v3, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    const/16 v4, 0x10e

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    if-eqz v3, :cond_1

    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 99
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 100
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 93
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 94
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 95
    nop

    .line 103
    :goto_0
    const/4 v3, 0x2

    mul-int v7, v3, v2

    add-int/2addr v7, v0

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    invoke-virtual {p0, v7, v3}, Lcom/android/camera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 105
    iget v3, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 120
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 116
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 117
    goto :goto_1

    .line 111
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 112
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 113
    goto :goto_1

    .line 107
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    nop

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v4, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 124
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 64
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    .line 66
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 133
    rem-int/lit16 p1, p1, 0x168

    .line 134
    iget v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 137
    iget v0, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    sub-int v0, p1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 138
    .local v0, "diff":I
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 139
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateCounterClockwise(Landroid/view/View;)V

    goto :goto_0

    .line 140
    :cond_1
    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 141
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 142
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    goto :goto_0

    .line 143
    :cond_2
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    .line 144
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 147
    .end local v0    # "diff":I
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/RotateLayout;->mOrientation:I

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 150
    :cond_4
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method
