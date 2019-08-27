.class Lcom/applisto/appcloner/classes/OpenLinksWith$1;
.super Lcom/applisto/appcloner/classes/util/IActivityManagerHook;
.source "OpenLinksWith.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/OpenLinksWith;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/OpenLinksWith;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/OpenLinksWith;

    .line 41
    iput-object p1, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->this$0:Lcom/applisto/appcloner/classes/OpenLinksWith;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/OpenLinksWith$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/IActivityManagerHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .param p1, "originalActivityManager"    # Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;

    invoke-direct {v0, p0, p1}, Lcom/applisto/appcloner/classes/OpenLinksWith$1$1;-><init>(Lcom/applisto/appcloner/classes/OpenLinksWith$1;Ljava/lang/Object;)V

    return-object v0
.end method
