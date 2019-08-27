.class Lcom/applisto/appcloner/classes/NotificationOptions$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/NotificationOptions;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/NotificationOptions;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/NotificationOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/NotificationOptions;

    .line 787
    iput-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 794
    :try_start_0
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 795
    .local v0, "id":I
    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$2800(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 797
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_1

    .line 799
    const-string v2, "notification"

    .line 800
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 801
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 803
    iget-object v3, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v3}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$1700(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 804
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_0

    .line 805
    iget-object v4, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$1800(Lcom/applisto/appcloner/classes/NotificationOptions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 807
    :cond_0
    new-instance v4, Lcom/applisto/appcloner/classes/NotificationOptions$2$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/applisto/appcloner/classes/NotificationOptions$2$1;-><init>(Lcom/applisto/appcloner/classes/NotificationOptions$2;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    move-object v3, v4

    .line 819
    iget-object v4, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$1800(Lcom/applisto/appcloner/classes/NotificationOptions;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v5}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$2700(Lcom/applisto/appcloner/classes/NotificationOptions;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    iget-object v4, p0, Lcom/applisto/appcloner/classes/NotificationOptions$2;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$1700(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    .end local v0    # "id":I
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1
    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
