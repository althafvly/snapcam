.class public Lcom/applisto/appcloner/classes/AutoPressButtons;
.super Lcom/applisto/appcloner/classes/OnAppExitListener;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoPressButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .locals 10
    .param p1, "cloneSettings"    # Lcom/applisto/appcloner/classes/CloneSettings;

    .line 38
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/OnAppExitListener;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    .line 40
    const-string v0, "autoPressButtons"

    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "autoPressButtons":Ljava/util/List;, "Ljava/util/List<Lcom/applisto/appcloner/classes/CloneSettings;>;"
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoPressButtons; autoPressButtons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v0, :cond_3

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applisto/appcloner/classes/CloneSettings;

    .line 45
    .local v2, "autoPressButton":Lcom/applisto/appcloner/classes/CloneSettings;
    const-string v3, "buttonLabel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "buttonLabel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 47
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 48
    const-string v5, "screenText"

    invoke-virtual {v2, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "screenText":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 50
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 52
    :cond_0
    const-string v6, "pressOnceOnly"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 53
    .local v6, "pressOnceOnly":Z
    iget-object v7, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    new-instance v8, Landroid/util/Pair;

    if-eqz v6, :cond_1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    nop

    :cond_1
    invoke-direct {v8, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v2    # "autoPressButton":Lcom/applisto/appcloner/classes/CloneSettings;
    .end local v3    # "buttonLabel":Ljava/lang/String;
    .end local v5    # "screenText":Ljava/lang/String;
    .end local v6    # "pressOnceOnly":Z
    :cond_2
    goto :goto_0

    .line 58
    :cond_3
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoPressButtons; mAutoPressButtons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/AutoPressButtons;)V
    .locals 0
    .param p0, "x0"    # Lcom/applisto/appcloner/classes/AutoPressButtons;

    .line 29
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->checkForButtons()V

    return-void
.end method

.method static synthetic access$202(Lcom/applisto/appcloner/classes/AutoPressButtons;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/applisto/appcloner/classes/AutoPressButtons;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/applisto/appcloner/classes/AutoPressButtons;

    .line 29
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    return-object v0
.end method

.method private declared-synchronized checkForButtons()V
    .locals 9

    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "checkForButtons; not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getViewRoots()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewParent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .local v2, "viewRoot":Landroid/view/ViewParent;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mView"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 134
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 141
    .local v4, "view":Landroid/view/View;
    new-instance v5, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;

    invoke-direct {v5, p0, v4}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    .line 142
    .local v5, "buttonViewFinder":Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;
    invoke-virtual {v5}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;->findView()Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, "button":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->callOnClick()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    sget-object v7, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v8, "checkForButtons; button clicked"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    :cond_1
    sget-object v7, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v8, "checkForButtons; button not clicked"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "buttonViewFinder":Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewFinder;
    .end local v6    # "button":Landroid/view/View;
    :cond_2
    :goto_1
    goto :goto_2

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 157
    .end local v0    # "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :cond_3
    goto :goto_3

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .locals 1

    .line 98
    const/16 v0, 0x1f4

    return v0
.end method

.method init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->onCreate()Z

    .line 66
    :cond_0
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 70
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/AutoPressButtons$1;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/AutoPressButtons$1;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_0
    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 103
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->checkForButtons()V

    .line 104
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "onAppExit; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    .line 112
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 113
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
