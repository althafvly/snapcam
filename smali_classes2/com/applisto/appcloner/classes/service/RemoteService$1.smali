.class Lcom/applisto/appcloner/classes/service/RemoteService$1;
.super Lcom/applisto/appcloner/classes/service/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/service/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/service/RemoteService;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/service/RemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/service/RemoteService;

    .line 29
    iput-object p1, p0, Lcom/applisto/appcloner/classes/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/classes/service/RemoteService;

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/service/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .locals 1

    .line 33
    const/4 v0, 0x1

    return v0
.end method
