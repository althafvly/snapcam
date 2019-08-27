.class public Lcom/android/camera/util/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# static fields
.field private static final GALLERY_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.gallery3d.app.GalleryActivity"

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.android.gallery3d"

.field private static final SNAPDRAGON_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "org.codeaurora.gallery"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "org.codeaurora.gallery"

    invoke-static {p0, v0}, Lcom/android/camera/util/IntentHelper;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "org.codeaurora.gallery"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.gallery3d"

    .line 34
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.gallery3d.app.GalleryActivity"

    .line 35
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 34
    return-object v1
.end method

.method public static getVideoPlayerIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method private static packageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0

    .line 45
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    return v0
.end method
