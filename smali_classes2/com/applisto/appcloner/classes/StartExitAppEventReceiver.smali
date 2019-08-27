.class public abstract Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartExitAppEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 17
    sget-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    return-object v0
.end method

.method private exitApp()V
    .locals 4

    .line 74
    sget-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "exitApp; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 78
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public static init()V
    .locals 2

    .line 27
    :try_start_0
    sget-boolean v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->sInited:Z

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "init; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver$1;

    invoke-direct {v0}, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver$1;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver$1;->onCreate()Z

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->sInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startApp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    sget-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "startApp; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 65
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventAction"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAction; eventAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "START_APP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->startApp(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "EXIT_APP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;->exitApp()V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
