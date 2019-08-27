.class public Lcom/applisto/appcloner/classes/FakeCalculator;
.super Lcom/applisto/appcloner/classes/OnAppExitListener;
.source "FakeCalculator.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/applisto/appcloner/classes/FakeCalculator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/OnAppExitListener;-><init>()V

    return-void
.end method


# virtual methods
.method public install()V
    .locals 2

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/FakeCalculator;->onCreate()Z

    .line 24
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 30
    instance-of v0, p1, Lcom/applisto/appcloner/classes/CalculatorActivity;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 35
    :cond_0
    sget-boolean v0, Lcom/applisto/appcloner/classes/CalculatorActivity;->sUnlocked:Z

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    sget-object v1, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated; started CalculatorActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; already unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/applisto/appcloner/classes/CalculatorActivity;->sUnlocked:Z

    .line 48
    return-void
.end method
