.class public Lcom/android/camera/ProxyLauncher;
.super Landroid/app/Activity;
.source "ProxyLauncher.java"


# static fields
.field public static final RESULT_USER_CANCELED:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 39
    if-nez p2, :cond_0

    .line 40
    const/4 p2, -0x2

    .line 42
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ProxyLauncher;->setResult(ILandroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ProxyLauncher;->finish()V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ProxyLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ProxyLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
