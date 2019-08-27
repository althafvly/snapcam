.class public Lcom/applisto/appcloner/service/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# instance fields
.field private final mBinder:Lcom/applisto/appcloner/service/IRemoteService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/applisto/appcloner/service/RemoteService$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/service/RemoteService$1;-><init>(Lcom/applisto/appcloner/service/RemoteService;)V

    iput-object v0, p0, Lcom/applisto/appcloner/service/RemoteService;->mBinder:Lcom/applisto/appcloner/service/IRemoteService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 24
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService;->mBinder:Lcom/applisto/appcloner/service/IRemoteService$Stub;

    return-object v0
.end method
