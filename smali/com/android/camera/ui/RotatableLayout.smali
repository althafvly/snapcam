.class public Lcom/android/camera/ui/RotatableLayout;
.super Landroid/widget/FrameLayout;
.source "RotatableLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotatableLayout"

.field private static final UNKOWN_ORIENTATION:I = -0x1


# instance fields
.field private mInitialOrientation:I

.field private mIsDefaultToPortrait:Z

.field private mPrevRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotatableLayout;->mIsDefaultToPortrait:Z

    .line 59
    invoke-direct {p0}, Lcom/android/camera/ui/RotatableLayout;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotatableLayout;->mIsDefaultToPortrait:Z

    .line 54
    invoke-direct {p0}, Lcom/android/camera/ui/RotatableLayout;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotatableLayout;->mIsDefaultToPortrait:Z

    .line 49
    invoke-direct {p0}, Lcom/android/camera/ui/RotatableLayout;->init()V

    .line 50
    return-void
.end method

.method private static contains(II)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "mask"    # I

    .line 189
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static flip(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 280
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 281
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method private init()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 64
    return-void
.end method

.method public static isClockWiseRotation(II)Z
    .locals 1
    .param p0, "prevRotation"    # I
    .param p1, "currentRotation"    # I

    .line 174
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 v0, v0, 0x168

    if-ne p0, v0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static rotate(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isClockwise"    # Z

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateCounterClockwise(Landroid/view/View;)V

    .line 186
    :goto_0
    return-void
.end method

.method public static rotateClockwise(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 193
    if-nez p0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 195
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 196
    .local v1, "gravity":I
    const/4 v2, 0x0

    .line 198
    .local v2, "ngravity":I
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    or-int/lit8 v2, v2, 0x30

    .line 201
    :cond_1
    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    or-int/lit8 v2, v2, 0x50

    .line 204
    :cond_2
    const/16 v3, 0x30

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    or-int/lit8 v2, v2, 0x5

    .line 207
    :cond_3
    const/16 v3, 0x50

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    or-int/lit8 v2, v2, 0x3

    .line 210
    :cond_4
    const/16 v3, 0x11

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    or-int/lit8 v2, v2, 0x11

    .line 213
    :cond_5
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 214
    or-int/lit8 v2, v2, 0x10

    .line 216
    :cond_6
    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    or-int/lit8 v2, v2, 0x1

    .line 219
    :cond_7
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 221
    .local v3, "ml":I
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 222
    .local v4, "mr":I
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 223
    .local v5, "mt":I
    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 224
    .local v6, "mb":I
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 225
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 226
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 228
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 229
    .local v7, "width":I
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 230
    .local v8, "height":I
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 231
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 232
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void
.end method

.method public static rotateCounterClockwise(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 236
    if-nez p0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    .local v1, "gravity":I
    const/4 v2, 0x0

    .line 241
    .local v2, "ngravity":I
    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    or-int/lit8 v2, v2, 0x30

    .line 244
    :cond_1
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    or-int/lit8 v2, v2, 0x50

    .line 247
    :cond_2
    const/16 v3, 0x30

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    or-int/lit8 v2, v2, 0x3

    .line 250
    :cond_3
    const/16 v3, 0x50

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    or-int/lit8 v2, v2, 0x5

    .line 253
    :cond_4
    const/16 v3, 0x11

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    or-int/lit8 v2, v2, 0x11

    .line 256
    :cond_5
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 257
    or-int/lit8 v2, v2, 0x10

    .line 259
    :cond_6
    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 260
    or-int/lit8 v2, v2, 0x1

    .line 262
    :cond_7
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 264
    .local v3, "ml":I
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 265
    .local v4, "mr":I
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 266
    .local v5, "mt":I
    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 267
    .local v6, "mb":I
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 268
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 269
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 270
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 271
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 272
    .local v7, "width":I
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 273
    .local v8, "height":I
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-void
.end method

.method private rotateIfNeeded()V
    .locals 3

    .line 91
    iget v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 95
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 96
    .local v1, "diff":I
    if-nez v1, :cond_1

    .line 98
    return-void

    .line 99
    :cond_1
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 101
    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->flipChildren()V

    .line 103
    return-void

    .line 106
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    invoke-static {v2, v0}, Lcom/android/camera/ui/RotatableLayout;->isClockWiseRotation(II)Z

    move-result v2

    .line 107
    .local v2, "clockwise":Z
    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/RotatableLayout;->rotateLayout(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public checkLayoutFlip()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 123
    .local v0, "currentRotation":I
    iget v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    .line 124
    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->flipChildren()V

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->requestLayout()V

    .line 128
    :cond_0
    return-void
.end method

.method protected flipChildren()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getChildCount()I

    move-result v0

    .line 167
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/RotatableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/RotatableLayout;->flip(Landroid/view/View;)V

    .line 167
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected getUnifiedRotation()I
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 115
    .local v0, "rotation":I
    iget-boolean v1, p0, Lcom/android/camera/ui/RotatableLayout;->mIsDefaultToPortrait:Z

    if-nez v1, :cond_0

    .line 116
    add-int/lit8 v1, v0, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 118
    :cond_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 72
    iget v0, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotatableLayout;->mIsDefaultToPortrait:Z

    .line 74
    iget-boolean v0, p0, Lcom/android/camera/ui/RotatableLayout;->mIsDefaultToPortrait:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    iget v0, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 77
    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    iput v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    goto :goto_2

    .line 81
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 82
    goto :goto_1

    :cond_2
    const/16 v1, 0x10e

    :goto_1
    iput v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 86
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateIfNeeded()V

    .line 88
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    invoke-direct {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateIfNeeded()V

    .line 142
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 132
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->checkLayoutFlip()V

    .line 136
    :cond_0
    return-void
.end method

.method protected rotateChildren(Z)V
    .locals 3
    .param p1, "clockwise"    # Z

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getChildCount()I

    move-result v0

    .line 159
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/RotatableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, "child":Landroid/view/View;
    invoke-static {v2, p1}, Lcom/android/camera/ui/RotatableLayout;->rotate(Landroid/view/View;Z)V

    .line 159
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected rotateLayout(Z)V
    .locals 3
    .param p1, "clockwise"    # Z

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    .local v1, "width":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    .local v2, "height":I
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotatableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RotatableLayout;->rotateChildren(Z)V

    .line 155
    return-void
.end method
