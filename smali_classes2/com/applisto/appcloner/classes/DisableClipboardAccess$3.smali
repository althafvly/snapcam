.class Lcom/applisto/appcloner/classes/DisableClipboardAccess$3;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/DisableClipboardAccess;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/DisableClipboardAccess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    .line 279
    iput-object p1, p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess$3;->this$0:Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess$3;->this$0:Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->access$1100(Lcom/applisto/appcloner/classes/DisableClipboardAccess;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess$3;->this$0:Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->access$1000(Lcom/applisto/appcloner/classes/DisableClipboardAccess;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->access$1200(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    return-void
.end method
