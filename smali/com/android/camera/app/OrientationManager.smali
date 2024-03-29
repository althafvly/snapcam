.class public Lcom/android/camera/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CAM_OrientationManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOrientationListener:Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/app/OrientationManager;->mActivity:Landroid/app/Activity;

    .line 42
    new-instance v0, Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/android/camera/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/app/OrientationManager;->mOrientationListener:Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 31
    invoke-static {p0, p1}, Lcom/android/camera/app/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method private calculateCurrentScreenOrientation()I
    .locals 6

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/app/OrientationManager;->getDisplayRotation()I

    move-result v0

    .line 57
    .local v0, "displayRotation":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb4

    if-ge v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 58
    .local v3, "standard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 60
    if-eqz v3, :cond_1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/16 v1, 0x8

    .line 60
    :goto_1
    return v1

    .line 64
    :cond_2
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_5

    .line 69
    :cond_3
    if-nez v3, :cond_4

    move v1, v2

    nop

    :cond_4
    move v3, v1

    .line 71
    :cond_5
    if-eqz v3, :cond_6

    .line 72
    goto :goto_2

    .line 73
    :cond_6
    const/16 v2, 0x9

    .line 71
    :goto_2
    return v2
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 119
    .local v0, "rotation":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 125
    return v1

    .line 123
    :pswitch_0
    const/16 v1, 0x10e

    return v1

    .line 122
    :pswitch_1
    const/16 v1, 0xb4

    return v1

    .line 121
    :pswitch_2
    const/16 v1, 0x5a

    return v1

    .line 120
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "changeOrientation":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_1

    .line 106
    :cond_0
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 107
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 108
    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 110
    .end local v1    # "dist":I
    :goto_1
    if-eqz v0, :cond_2

    .line 111
    add-int/lit8 v1, p0, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 113
    :cond_2
    return p1
.end method


# virtual methods
.method public getCompensation()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/camera/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/camera/app/OrientationManager;->mOrientationListener:Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;->disable()V

    .line 52
    return-void
.end method

.method public resume()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/camera/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/camera/app/OrientationManager;->mOrientationListener:Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$MyOrientationEventListener;->enable()V

    .line 48
    return-void
.end method
