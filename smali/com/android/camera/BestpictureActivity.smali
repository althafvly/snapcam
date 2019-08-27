.class public Lcom/android/camera/BestpictureActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BestpictureActivity$SaveImageTask;,
        Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;,
        Lcom/android/camera/BestpictureActivity$ImageLoadingThread;,
        Lcom/android/camera/BestpictureActivity$ImageItems;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static BESTPICTURE_ACTIVITY_CODE:I = 0x0

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final NAMES:[Ljava/lang/String;

.field public static final NUM_IMAGES:I = 0xa

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final TAG:Ljava/lang/String; = "BestpictureActivity"


# instance fields
.field private mActivity:Lcom/android/camera/BestpictureActivity;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogRoot:Landroid/view/View;

.field private mDotsView:Lcom/android/camera/ui/DotsView;

.field private mFilesPath:Ljava/lang/String;

.field private mHeight:I

.field private mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

.field private mImagePager:Landroid/support/v4/view/ViewPager;

.field private mImagePagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mLoadingThread:Lcom/android/camera/BestpictureActivity$ImageLoadingThread;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mPlaceHolderUri:Landroid/net/Uri;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSecureCamera:Z

.field private mWidth:I

.field private mshowAgainCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 79
    const-string v0, "00"

    const-string v1, "01"

    const-string v2, "02"

    const-string v3, "03"

    const-string v4, "04"

    const-string v5, "05"

    const-string v6, "06"

    const-string v7, "07"

    const-string v8, "08"

    const-string v9, "09"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    .line 107
    const/16 v0, 0xb

    sput v0, Lcom/android/camera/BestpictureActivity;->BESTPICTURE_ACTIVITY_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/ui/DotsView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity$ImageItems;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/BestpictureActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity;->initDeleteAllDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/BestpictureActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mshowAgainCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/BestpictureActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/BestpictureActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mFilesPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/BestpictureActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget v0, p0, Lcom/android/camera/BestpictureActivity;->mHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/BestpictureActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget v0, p0, Lcom/android/camera/BestpictureActivity;->mWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/BestpictureActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/BestpictureActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/BestpictureActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .line 77
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/BestpictureActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mActivity:Lcom/android/camera/BestpictureActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/BestpictureActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/camera/BestpictureActivity;->initSaveDialog(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/BestpictureActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/BestpictureActivity;->setDialogLayoutPararms()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/BestpictureActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/camera/BestpictureActivity;->saveImages(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/BestpictureActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity;->initDeleteDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/BestpictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/BestpictureActivity;->backToViewfinder()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/BestpictureActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p1, "x1"    # Landroid/view/View;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity;->initOverFlow(Landroid/view/View;)V

    return-void
.end method

.method private backToViewfinder()V
    .locals 2

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/BestpictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->finish()V

    .line 508
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mActivity:Lcom/android/camera/BestpictureActivity;

    new-instance v1, Lcom/android/camera/BestpictureActivity$11;

    invoke-direct {v1, p0}, Lcom/android/camera/BestpictureActivity$11;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/BestpictureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 583
    return-void
.end method

.method private getDialogLayout(I)Lcom/android/camera/ui/BestPictureActionDialogLayout;
    .locals 3
    .param p1, "mode"    # I

    .line 460
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/BestpictureActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 461
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 462
    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    .line 463
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 465
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BestpictureActivity;->mDialog:Landroid/app/Dialog;

    .line 466
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BestPictureActionDialogLayout;

    .line 467
    .local v0, "layout":Lcom/android/camera/ui/BestPictureActionDialogLayout;
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/camera/BestpictureActivity;->mshowAgainCheck:Landroid/widget/CheckBox;

    .line 468
    return-object v0
.end method

.method private initDeleteAllDialog(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 348
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity;->getDialogLayout(I)Lcom/android/camera/ui/BestPictureActionDialogLayout;

    move-result-object v0

    .line 349
    .local v0, "layout":Lcom/android/camera/ui/BestPictureActionDialogLayout;
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    new-instance v2, Lcom/android/camera/BestpictureActivity$8;

    invoke-direct {v2, p0}, Lcom/android/camera/BestpictureActivity$8;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/BestPictureActionDialogLayout;->setDialogDataControler(Landroid/view/View;Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;)V

    .line 399
    return-void
.end method

.method private initDeleteDialog(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 294
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity;->getDialogLayout(I)Lcom/android/camera/ui/BestPictureActionDialogLayout;

    move-result-object v0

    .line 295
    .local v0, "layout":Lcom/android/camera/ui/BestPictureActionDialogLayout;
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    new-instance v2, Lcom/android/camera/BestpictureActivity$7;

    invoke-direct {v2, p0}, Lcom/android/camera/BestpictureActivity$7;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/BestPictureActionDialogLayout;->setDialogDataControler(Landroid/view/View;Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;)V

    .line 345
    return-void
.end method

.method private initOverFlow(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 259
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "popView":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {p0, v2}, Lcom/android/camera/util/CameraUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 261
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p0, v3}, Lcom/android/camera/util/CameraUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 262
    .local v1, "pop":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 263
    nop

    .line 264
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p0, v2}, Lcom/android/camera/util/CameraUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 265
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/android/camera/util/CameraUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 263
    const/16 v4, 0x35

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 266
    const v2, 0x7f0d0087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    .local v2, "saveAllText":Landroid/widget/TextView;
    const v3, 0x7f0d0088

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 268
    .local v3, "deleteAllText":Landroid/widget/TextView;
    new-instance v4, Lcom/android/camera/BestpictureActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/BestpictureActivity$5;-><init>(Lcom/android/camera/BestpictureActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v4, Lcom/android/camera/BestpictureActivity$6;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/BestpictureActivity$6;-><init>(Lcom/android/camera/BestpictureActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void
.end method

.method private initSaveDialog(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "choosenCount"    # I

    .line 403
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity;->getDialogLayout(I)Lcom/android/camera/ui/BestPictureActionDialogLayout;

    move-result-object v0

    .line 404
    .local v0, "layout":Lcom/android/camera/ui/BestPictureActionDialogLayout;
    iget-object v1, p0, Lcom/android/camera/BestpictureActivity;->mDialogRoot:Landroid/view/View;

    new-instance v2, Lcom/android/camera/BestpictureActivity$9;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/BestpictureActivity$9;-><init>(Lcom/android/camera/BestpictureActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/BestPictureActionDialogLayout;->setDialogDataControler(Landroid/view/View;Lcom/android/camera/ui/BestPictureActionDialogLayout$IDialogDataControler;)V

    .line 456
    return-void
.end method

.method private saveForground(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 615
    .local v0, "captureStartTime":J
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 616
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 617
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 618
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/camera/BestpictureActivity;->mPlaceHolderUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 620
    .local v4, "outPath":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 621
    .local v5, "out":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 622
    .local v6, "in":Ljava/io/FileInputStream;
    const/16 v7, 0x1000

    new-array v7, v7, [B

    .line 624
    .local v7, "buf":[B
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "len":I
    if-lez v8, :cond_1

    .line 625
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 627
    :cond_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 628
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "buf":[B
    .end local v9    # "len":I
    goto :goto_2

    .line 629
    :catch_0
    move-exception v5

    .line 631
    :goto_2
    return-void
.end method

.method private saveImages(IZ)V
    .locals 7
    .param p1, "toSaveCount"    # I
    .param p2, "saveAll"    # Z

    .line 479
    const/4 v0, -0x1

    .line 480
    .local v0, "index":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/BestpictureActivity;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    invoke-static {v3}, Lcom/android/camera/BestpictureActivity$ImageItems;->access$200(Lcom/android/camera/BestpictureActivity$ImageItems;)[Z

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_4

    .line 481
    const/4 v3, 0x0

    const/4 v5, -0x1

    if-eqz p2, :cond_1

    .line 482
    if-eq v2, v5, :cond_0

    .line 483
    new-instance v5, Lcom/android/camera/BestpictureActivity$SaveImageTask;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/BestpictureActivity$SaveImageTask;-><init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V

    new-array v3, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/BestpictureActivity;->mFilesPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v5, v3}, Lcom/android/camera/BestpictureActivity$SaveImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 485
    :cond_0
    move v2, v0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/BestpictureActivity;->mFilesPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/BestpictureActivity;->saveForground(Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_1
    iget-object v6, p0, Lcom/android/camera/BestpictureActivity;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    invoke-static {v6}, Lcom/android/camera/BestpictureActivity$ImageItems;->access$200(Lcom/android/camera/BestpictureActivity$ImageItems;)[Z

    move-result-object v6

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    .line 490
    if-eq v2, v5, :cond_2

    .line 491
    new-instance v5, Lcom/android/camera/BestpictureActivity$SaveImageTask;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/BestpictureActivity$SaveImageTask;-><init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V

    new-array v3, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/BestpictureActivity;->mFilesPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v5, v3}, Lcom/android/camera/BestpictureActivity$SaveImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 493
    :cond_2
    move v2, v0

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/BestpictureActivity;->mFilesPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/camera/BestpictureActivity;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/BestpictureActivity;->saveForground(Ljava/lang/String;)V

    .line 480
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 499
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e043d

    new-array v4, v4, [Ljava/lang/Object;

    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 499
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "toastString":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 502
    invoke-direct {p0}, Lcom/android/camera/BestpictureActivity;->backToViewfinder()V

    .line 503
    return-void
.end method

.method private setDialogLayoutPararms()V
    .locals 3

    .line 473
    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 474
    .local v0, "width":I
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p0, v1}, Lcom/android/camera/util/CameraUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 475
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 476
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mActivity:Lcom/android/camera/BestpictureActivity;

    new-instance v1, Lcom/android/camera/BestpictureActivity$10;

    invoke-direct {v1, p0}, Lcom/android/camera/BestpictureActivity$10;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/BestpictureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method


# virtual methods
.method public getImageItems()Lcom/android/camera/BestpictureActivity$ImageItems;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    iput-object p0, p0, Lcom/android/camera/BestpictureActivity;->mActivity:Lcom/android/camera/BestpictureActivity;

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    const-string v2, "secure_camera"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/BestpictureActivity;->mSecureCamera:Z

    goto :goto_1

    .line 172
    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/BestpictureActivity;->mSecureCamera:Z

    .line 177
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/BestpictureActivity;->mSecureCamera:Z

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 180
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 181
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    .end local v2    # "win":Landroid/view/Window;
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Bestpicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BestpictureActivity;->mFilesPath:Ljava/lang/String;

    .line 185
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/android/camera/BestpictureActivity;->setContentView(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 187
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 188
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 189
    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/camera/BestpictureActivity;->mWidth:I

    .line 190
    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/camera/BestpictureActivity;->mHeight:I

    .line 191
    new-instance v4, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v4}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v4, p0, Lcom/android/camera/BestpictureActivity;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 193
    new-instance v4, Lcom/android/camera/BestpictureActivity$ImageItems;

    iget-object v5, p0, Lcom/android/camera/BestpictureActivity;->mActivity:Lcom/android/camera/BestpictureActivity;

    invoke-direct {v4, v5}, Lcom/android/camera/BestpictureActivity$ImageItems;-><init>(Lcom/android/camera/BestpictureActivity;)V

    iput-object v4, p0, Lcom/android/camera/BestpictureActivity;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    .line 194
    const v4, 0x7f0d0010

    invoke-virtual {p0, v4}, Lcom/android/camera/BestpictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/DotsView;

    iput-object v4, p0, Lcom/android/camera/BestpictureActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    .line 195
    iget-object v4, p0, Lcom/android/camera/BestpictureActivity;->mDotsView:Lcom/android/camera/ui/DotsView;

    iget-object v5, p0, Lcom/android/camera/BestpictureActivity;->mImageItems:Lcom/android/camera/BestpictureActivity$ImageItems;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/DotsView;->setItems(Lcom/android/camera/ui/DotsViewItem;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/BestpictureActivity;->mPlaceHolderUri:Landroid/net/Uri;

    .line 198
    const v4, 0x7f0d000c

    invoke-virtual {p0, v4}, Lcom/android/camera/BestpictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/android/camera/BestpictureActivity;->mImagePager:Landroid/support/v4/view/ViewPager;

    .line 199
    new-instance v4, Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;

    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/camera/BestpictureActivity$ImagePagerAdapter;-><init>(Lcom/android/camera/BestpictureActivity;Landroid/app/FragmentManager;)V

    iput-object v4, p0, Lcom/android/camera/BestpictureActivity;->mImagePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 200
    iget-object v4, p0, Lcom/android/camera/BestpictureActivity;->mImagePager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/android/camera/BestpictureActivity;->mImagePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 201
    iget-object v4, p0, Lcom/android/camera/BestpictureActivity;->mImagePager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/android/camera/BestpictureActivity$1;

    invoke-direct {v5, p0}, Lcom/android/camera/BestpictureActivity$1;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 211
    const v4, 0x7f0d000e

    invoke-virtual {p0, v4}, Lcom/android/camera/BestpictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/camera/BestpictureActivity$2;

    invoke-direct {v5, p0}, Lcom/android/camera/BestpictureActivity$2;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v4, 0x7f0d000d

    invoke-virtual {p0, v4}, Lcom/android/camera/BestpictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/camera/BestpictureActivity$3;

    invoke-direct {v5, p0}, Lcom/android/camera/BestpictureActivity$3;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v4, 0x7f0d000f

    invoke-virtual {p0, v4}, Lcom/android/camera/BestpictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateImageView;

    .line 247
    .local v4, "moreView":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {p0}, Lcom/android/camera/BestpictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02014a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 248
    .local v5, "mMoreBp":Landroid/graphics/Bitmap;
    const/16 v6, 0x5a

    invoke-static {v5, v6}, Lcom/android/camera/util/CameraUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 249
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    new-instance v6, Lcom/android/camera/BestpictureActivity$4;

    invoke-direct {v6, p0}, Lcom/android/camera/BestpictureActivity$4;-><init>(Lcom/android/camera/BestpictureActivity;)V

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 587
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 561
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 562
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 552
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 553
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mLoadingThread:Lcom/android/camera/BestpictureActivity$ImageLoadingThread;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;-><init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V

    iput-object v0, p0, Lcom/android/camera/BestpictureActivity;->mLoadingThread:Lcom/android/camera/BestpictureActivity$ImageLoadingThread;

    .line 555
    iget-object v0, p0, Lcom/android/camera/BestpictureActivity;->mLoadingThread:Lcom/android/camera/BestpictureActivity$ImageLoadingThread;

    invoke-virtual {v0}, Lcom/android/camera/BestpictureActivity$ImageLoadingThread;->start()V

    .line 557
    :cond_0
    return-void
.end method
