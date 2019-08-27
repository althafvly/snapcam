.class Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;
.super Ljava/lang/Object;
.source "OpenLinksWith.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/OpenLinksWith$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

.field final synthetic val$originalActivityManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/OpenLinksWith$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    .line 44
    iput-object p1, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;->this$1:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    :try_start_0
    const-string v0, "startActivity"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 55
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;->this$1:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    iget-object v3, v3, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;->this$1:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    iget-object v4, v4, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$000(Lcom/applisto/appcloner/classes/OpenLinksWith;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$100(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;->this$1:Lcom/applisto/appcloner/classes/OpenLinksWith$1;

    iget-object v3, v3, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

    invoke-static {v3}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$000(Lcom/applisto/appcloner/classes/OpenLinksWith;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/applisto/appcloner/classes/OpenLinksWith;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
