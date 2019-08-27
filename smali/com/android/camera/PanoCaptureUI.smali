.class public Lcom/android/camera/PanoCaptureUI;
.super Ljava/lang/Object;
.source "PanoCaptureUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapCam_PanoCaptureUI"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mController:Lcom/android/camera/PanoCaptureModule;

.field private mIsSceneModeLabelClose:Z

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mOrientation:I

.field private mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

.field private mRootView:Landroid/view/View;

.field private mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

.field private mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

.field private mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

.field private mSceneModeLabelView:Landroid/widget/LinearLayout;

.field private mSceneModeName:Landroid/widget/TextView;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceMode:I

.field private mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTopMargin:I

.field private mUIhidden:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PanoCaptureModule;
    .param p3, "parent"    # Landroid/view/View;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 86
    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 87
    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mMatrix:Landroid/graphics/Matrix;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureUI;->mUIhidden:Z

    .line 90
    iput v0, p0, Lcom/android/camera/PanoCaptureUI;->mTopMargin:I

    .line 91
    iput v0, p0, Lcom/android/camera/PanoCaptureUI;->mBottomMargin:I

    .line 92
    iput v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceMode:I

    .line 97
    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureUI;->mIsSceneModeLabelClose:Z

    .line 163
    new-instance v1, Lcom/android/camera/PanoCaptureUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoCaptureUI$2;-><init>(Lcom/android/camera/PanoCaptureUI;)V

    iput-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 185
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 186
    iput-object p2, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    .line 187
    iput-object p3, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    .line 188
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f040022

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PanoCaptureProcessView;

    iput-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    .line 192
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->setContext(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;)V

    .line 193
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AutoFitSurfaceView;

    iput-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 194
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 197
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 198
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d001b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/PanoCaptureUI;->applySurfaceChange(IZ)V

    .line 202
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d001e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ShutterButton;

    iput-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 203
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setLongClickable(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 205
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraControls;

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 208
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/PanoCaptureUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoCaptureUI$3;-><init>(Lcom/android/camera/PanoCaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    .line 218
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeName:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeName:Landroid/widget/TextView;

    const v1, 0x7f0e027d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    .line 221
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/PanoCaptureUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoCaptureUI$4;-><init>(Lcom/android/camera/PanoCaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureUI;->initIndicators()V

    .line 230
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 231
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/android/camera/PanoCaptureUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 233
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v2, p0, Lcom/android/camera/PanoCaptureUI;->mTopMargin:I

    iget v3, p0, Lcom/android/camera/PanoCaptureUI;->mBottomMargin:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->setMargins(II)V

    .line 234
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureUI;->needShowInstructional()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget v1, p0, Lcom/android/camera/PanoCaptureUI;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/android/camera/PanoCaptureUI;->showSceneInstructionalDialog(I)V

    .line 237
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoCaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ShutterButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/PanoCaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/PanoCaptureProcessView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/PanoCaptureUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/camera/PanoCaptureUI;->mIsSceneModeLabelClose:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/PanoCaptureUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoCaptureUI;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/PanoCaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoCaptureUI;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .line 62
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .line 240
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 241
    .local v0, "l":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 242
    .local v1, "tm":I
    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 243
    .local v2, "bm":I
    div-int/lit8 v3, v0, 0x4

    mul-int/2addr v3, v1

    add-int v4, v1, v2

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PanoCaptureUI;->mTopMargin:I

    .line 244
    div-int/lit8 v3, v0, 0x4

    iget v4, p0, Lcom/android/camera/PanoCaptureUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PanoCaptureUI;->mBottomMargin:I

    .line 245
    return-void
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScreenWidth()I
    .locals 3

    .line 509
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 510
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 511
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v1
.end method

.method private initIndicators()V
    .locals 4

    .line 282
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    .line 283
    const v3, 0x7f0d0072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 284
    return-void
.end method

.method private needShowInstructional()Z
    .locals 6

    .line 449
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 450
    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    .line 452
    .local v1, "settingsManager":Lcom/android/camera/SettingsManager;
    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v3

    .line 453
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref_camera2_scenemode_key_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "instructionalKey":Ljava/lang/String;
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private rotationSceneModeInstructionalDialog(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .line 515
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 516
    invoke-direct {p0}, Lcom/android/camera/PanoCaptureUI;->getScreenWidth()I

    move-result v0

    .line 517
    .local v0, "screenWidth":I
    mul-int/lit8 v1, v0, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 518
    .local v1, "dialogSize":I
    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 519
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 520
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 521
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 522
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 523
    const v4, 0x7f0d00cf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 524
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 525
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 361
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 364
    :cond_1
    return-void
.end method

.method private setTransformMatrix(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 248
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mMatrix:Landroid/graphics/Matrix;

    .line 251
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    .local v0, "previewRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 253
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoCaptureModule;->onPreviewRectChanged(Landroid/graphics/Rect;)V

    .line 254
    return-void
.end method

.method private showSceneInstructionalDialog(I)V
    .locals 11
    .param p1, "orientation"    # I

    .line 458
    const v0, 0x7f040033

    .line 459
    .local v0, "layoutId":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 460
    :cond_0
    const v0, 0x7f040034

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "layout_inflater"

    .line 463
    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 464
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 466
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d00d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 467
    .local v3, "name":Landroid/widget/TextView;
    const v4, 0x7f0e027d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 469
    const v4, 0x7f0d00d0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 470
    .local v4, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0200bc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    const v5, 0x7f0d00d2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 473
    .local v5, "instructional":Landroid/widget/TextView;
    const v6, 0x7f0e02ab

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 475
    const v6, 0x7f0d00d3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 476
    .local v6, "remember":Landroid/widget/CheckBox;
    const v7, 0x7f0d00d5

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 477
    .local v7, "ok":Landroid/widget/Button;
    new-instance v8, Lcom/android/camera/PanoCaptureUI$7;

    invoke-direct {v8, p0, v6}, Lcom/android/camera/PanoCaptureUI$7;-><init>(Lcom/android/camera/PanoCaptureUI;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 496
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 498
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    nop

    .line 503
    if-eqz p1, :cond_2

    .line 504
    invoke-direct {p0, v2, p1}, Lcom/android/camera/PanoCaptureUI;->rotationSceneModeInstructionalDialog(Landroid/view/View;I)V

    .line 506
    :cond_2
    return-void

    .line 499
    :catch_0
    move-exception v8

    .line 500
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    return-void
.end method


# virtual methods
.method public declared-synchronized applySurfaceChange(IZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "isForcing"    # Z

    monitor-enter p0

    .line 145
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/PanoCaptureUI;->clearSurfaces()V

    .line 147
    iget-object v2, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 148
    iput v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 144
    .end local p1    # "mode":I
    .end local p2    # "isForcing":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 151
    .restart local p1    # "mode":I
    .restart local p2    # "isForcing":Z
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_3

    if-ne p1, v3, :cond_1

    :try_start_1
    iget v4, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceMode:I

    if-eq v4, v3, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    iget v4, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_3

    .line 153
    :cond_2
    monitor-exit p0

    return-void

    .line 154
    :cond_3
    if-ne p1, v3, :cond_4

    .line 155
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 156
    iput v3, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceMode:I

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 159
    iput v2, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    .end local p1    # "mode":I
    .end local p2    # "isForcing":Z
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/PanoCaptureUI;
    throw p1
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureUI;->mUIhidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clearSurfaces()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 101
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 324
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/android/camera/PanoCaptureUI;->mOrientation:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hideUI()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 292
    iget-boolean v0, p0, Lcom/android/camera/PanoCaptureUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 293
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureUI;->mUIhidden:Z

    .line 295
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    .line 296
    return-void
.end method

.method public initializeShutterButton()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/PanoCaptureUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoCaptureUI$5;-><init>(Lcom/android/camera/PanoCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 318
    return-void
.end method

.method public isFrameProcessing()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isFrameProcessing()Z

    move-result v0

    return v0
.end method

.method public isPanoCompleting()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isPanoCompleting()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->isImageCaptureIntent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->onCaptureCancelled()V

    .line 338
    return v1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    return v1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 345
    return v1

    .line 347
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpened()V
    .locals 0

    .line 288
    return-void
.end method

.method public onDisplayChanged()V
    .locals 2

    .line 410
    const-string v0, "SnapCam_PanoCaptureUI"

    const-string v1, "Device flip detected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 412
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->updateCameraOrientation()V

    .line 413
    return-void
.end method

.method public onErrorListener(I)V
    .locals 0
    .param p1, "error"    # I

    .line 446
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 406
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isCancelling"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V

    .line 113
    return-void
.end method

.method public onPanoStatusChange(Z)V
    .locals 2
    .param p1, "isStarting"    # Z

    .line 116
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/PanoCaptureUI$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/PanoCaptureUI$1;-><init>(Lcom/android/camera/PanoCaptureUI;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/android/camera/PanoCaptureUI;->collapseCameraControls()Z

    .line 394
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->getPanoramaExitButton()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->getPanoramaExitButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 0
    .param p1, "previewFocused"    # Z

    .line 352
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/PanoCaptureUI;->showUI()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoCaptureUI;->hideUI()V

    .line 357
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/PanoCaptureUI;->setShowMenu(Z)V

    .line 358
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->onResume()V

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoCaptureUI;->onPanoStatusChange(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->getPanoramaExitButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->getPanoramaExitButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PanoCaptureUI$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoCaptureUI$6;-><init>(Lcom/android/camera/PanoCaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 0
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setLayout(Landroid/util/Size;)V
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .line 181
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->setAspectRatio(II)V

    .line 182
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 416
    iput p1, p0, Lcom/android/camera/PanoCaptureUI;->mOrientation:I

    .line 417
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mPreviewProcessView:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView;->setOrientation(I)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 421
    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeName:Landroid/widget/TextView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 432
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 435
    invoke-direct {p0, p1}, Lcom/android/camera/PanoCaptureUI;->showSceneInstructionalDialog(I)V

    .line 437
    :cond_2
    return-void
.end method

.method public showUI()V
    .locals 1

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoCaptureUI;->mUIhidden:Z

    .line 300
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    .line 301
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 259
    const-string v0, "SnapCam_PanoCaptureUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 264
    const-string v0, "SnapCam_PanoCaptureUI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-object p1, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 266
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->onPreviewUIReady()V

    .line 267
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoCaptureUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 268
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 272
    const-string v0, "SnapCam_PanoCaptureUI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoCaptureModule;->onPreviewUIDestroyed()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoCaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 275
    return-void
.end method
