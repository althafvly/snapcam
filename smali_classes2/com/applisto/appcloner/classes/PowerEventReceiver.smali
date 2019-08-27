.class public Lcom/applisto/appcloner/classes/PowerEventReceiver;
.super Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;
.source "PowerEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/StartExitAppEventReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18
    sget-object v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v0

    .line 23
    .local v0, "cloneSettings":Lcom/applisto/appcloner/classes/CloneSettings;
    const-string v1, "powerEventsDockUndockEvents"

    .line 24
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 23
    invoke-virtual {v0, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 25
    .local v1, "powerEventsDockUndockEvents":Z
    sget-object v3, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive; powerEventsDockUndockEvents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 29
    sget-object v2, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v4, "onReceive; ACTION_POWER_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v2, "powerConnectedEventAction"

    const-string v4, "NONE"

    invoke-virtual {v0, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "powerConnectedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .end local v2    # "powerConnectedEventAction":Ljava/lang/String;
    goto :goto_0

    :cond_0
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 36
    sget-object v2, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v4, "onReceive; ACTION_POWER_DISCONNECTED"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v2, "powerDisconnectedEventAction"

    const-string v4, "NONE"

    invoke-virtual {v0, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "powerDisconnectedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .end local v2    # "powerDisconnectedEventAction":Ljava/lang/String;
    goto :goto_0

    :cond_1
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 43
    sget-object v4, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive; ACTION_DOCK_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 46
    .local v4, "dockState":I
    if-eqz v4, :cond_2

    const/4 v2, 0x1

    nop

    .line 47
    .local v2, "isDocked":Z
    :cond_2
    sget-object v5, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive; isDocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-eqz v2, :cond_3

    .line 50
    const-string v5, "powerConnectedEventAction"

    const-string v6, "NONE"

    invoke-virtual {v0, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "powerConnectedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .end local v5    # "powerConnectedEventAction":Ljava/lang/String;
    goto :goto_0

    .line 54
    :cond_3
    const-string v5, "powerDisconnectedEventAction"

    const-string v6, "NONE"

    invoke-virtual {v0, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "powerDisconnectedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "cloneSettings":Lcom/applisto/appcloner/classes/CloneSettings;
    .end local v1    # "powerEventsDockUndockEvents":Z
    .end local v2    # "isDocked":Z
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "dockState":I
    .end local v5    # "powerDisconnectedEventAction":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
