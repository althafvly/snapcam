.class public Lcom/applisto/appcloner/classes/DisableCameras$MyDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DisableCameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/DisableCameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDeviceAdminReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/applisto/appcloner/classes/DisableCameras;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnabled; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DisableCameras;->access$100(Landroid/content/Context;)V

    .line 125
    return-void
.end method
