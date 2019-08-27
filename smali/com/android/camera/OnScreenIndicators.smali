.class public Lcom/android/camera/OnScreenIndicators;
.super Ljava/lang/Object;
.source "OnScreenIndicators.java"


# static fields
.field public static final SCENE_MODE_HDR_PLUS:Ljava/lang/String; = "hdr_plus"


# instance fields
.field private final mExposureIndicator:Landroid/widget/ImageView;

.field private final mFlashIndicator:Landroid/widget/ImageView;

.field private final mLocationIndicator:Landroid/widget/ImageView;

.field private final mOnScreenIndicators:Landroid/view/View;

.field private final mSceneIndicator:Landroid/widget/ImageView;

.field private final mTimerIndicator:Landroid/widget/ImageView;

.field private final mWBArray:[I

.field private final mWBIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onScreenIndicatorsView"    # Landroid/view/View;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "iconIds":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 49
    .local v1, "n":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mWBArray:[I

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/camera/OnScreenIndicators;->mWBArray:[I

    const v4, 0x7f02007e

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/android/camera/OnScreenIndicators;->mOnScreenIndicators:Landroid/view/View;

    .line 54
    const v2, 0x7f0d0076

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    .line 56
    const v2, 0x7f0d0075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    .line 58
    const v2, 0x7f0d0073

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f0d0077

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    .line 62
    const v2, 0x7f0d0074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f0d0078

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public resetToDefault()V
    .locals 2

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(I)V

    .line 79
    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 80
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenIndicators;->updateTimerIndicator(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 84
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 201
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public updateExposureOnScreenIndicator(I)V
    .locals 3
    .param p1, "value"    # I

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    const v0, 0x7f02006f

    goto :goto_0

    .line 123
    :pswitch_1
    const v0, 0x7f02006e

    .line 124
    goto :goto_0

    .line 120
    :pswitch_2
    const v0, 0x7f02006d

    .line 121
    goto :goto_0

    .line 117
    :pswitch_3
    const v0, 0x7f020069

    .line 118
    goto :goto_0

    .line 114
    :pswitch_4
    const v0, 0x7f02006a

    .line 115
    goto :goto_0

    .line 111
    :pswitch_5
    const v0, 0x7f02006b

    .line 112
    goto :goto_0

    .line 108
    :pswitch_6
    const v0, 0x7f02006c

    .line 109
    nop

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .line 90
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    .line 94
    .local v0, "step":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(I)V

    .line 96
    return-void
.end method

.method public updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    const v0, 0x7f020071

    if-eqz p1, :cond_5

    const-string v1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 164
    :cond_2
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "torch"

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 166
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 160
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_2
    return-void
.end method

.method public updateLocationIndicator(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 144
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f020075

    goto :goto_0

    .line 146
    :cond_1
    const v1, 0x7f020074

    .line 145
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    return-void
.end method

.method public updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    const-string v0, "hdr_plus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 186
    :cond_1
    if-eqz p1, :cond_4

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 187
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    :goto_1
    return-void
.end method

.method public updateTimerIndicator(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f02007a

    goto :goto_0

    .line 140
    :cond_1
    const v1, 0x7f020079

    .line 139
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    return-void
.end method

.method public updateWBIndicator(I)V
    .locals 2
    .param p1, "wbIndex"    # I

    .line 133
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/OnScreenIndicators;->mWBArray:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    return-void
.end method
