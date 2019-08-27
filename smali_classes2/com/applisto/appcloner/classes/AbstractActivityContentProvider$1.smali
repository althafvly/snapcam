.class Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;
.super Ljava/lang/Object;
.source "AbstractActivityContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    .line 26
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;->this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;->this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->access$000(Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;->this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->access$000(Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .local v1, "activity":Landroid/app/Activity;
    :try_start_1
    iget-object v2, p0, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;->this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    invoke-virtual {v2, v1}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->onActivityTimer(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    goto :goto_1

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;->this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->access$200(Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider$1;->this$0:Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;

    invoke-virtual {v1}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->getActivityTimerDelayMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    :cond_1
    goto :goto_2

    .line 42
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/applisto/appcloner/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
