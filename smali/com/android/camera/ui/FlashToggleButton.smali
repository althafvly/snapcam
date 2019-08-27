.class public Lcom/android/camera/ui/FlashToggleButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "FlashToggleButton.java"


# instance fields
.field private cameraFlashIcon:[I

.field private mIndex:I

.field private mIsVideoFlash:Z

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private videoFlashIcon:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    .line 51
    return-void

    :array_0
    .array-data 4
        0x7f020043
        0x7f020042
        0x7f020041
    .end array-data

    :array_1
    .array-data 4
        0x7f020043
        0x7f020041
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    .line 55
    return-void

    :array_0
    .array-data 4
        0x7f020043
        0x7f020042
        0x7f020041
    .end array-data

    :array_1
    .array-data 4
        0x7f020043
        0x7f020041
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FlashToggleButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 42
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FlashToggleButton;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FlashToggleButton;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FlashToggleButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 42
    iget v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FlashToggleButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/FlashToggleButton;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FlashToggleButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 42
    invoke-direct {p0}, Lcom/android/camera/ui/FlashToggleButton;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->videoFlashIcon:[I

    .local v0, "icons":[I
    goto :goto_0

    .line 106
    .end local v0    # "icons":[I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton;->cameraFlashIcon:[I

    .line 108
    .restart local v0    # "icons":[I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashToggleButton;->setImageResource(I)V

    .line 109
    return-void
.end method


# virtual methods
.method public init(Z)V
    .locals 5
    .param p1, "videoFlash"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    .line 60
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashToggleButton;->mIsVideoFlash:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "pref_camera2_video_flashmode_key"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, "pref_camera2_flashmode_key"

    .line 65
    .restart local v0    # "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/FlashToggleButton;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "scene":Ljava/lang/String;
    const/16 v2, 0x8

    if-eqz v1, :cond_1

    const-string v3, "18"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 71
    return-void

    .line 74
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FlashToggleButton;->mIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 76
    return-void

    .line 78
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/camera/ui/FlashToggleButton;->update()V

    .line 82
    new-instance v2, Lcom/android/camera/ui/FlashToggleButton$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FlashToggleButton$1;-><init>(Lcom/android/camera/ui/FlashToggleButton;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method
