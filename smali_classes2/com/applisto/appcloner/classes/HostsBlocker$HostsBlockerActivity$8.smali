.class Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity$8;
.super Ljava/lang/Object;
.source "HostsBlocker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;

    .line 519
    iput-object p1, p0, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity$8;->this$0:Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity$8;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity$8;->this$0:Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity$8;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$1200(Landroid/content/Context;Ljava/lang/String;)V

    .line 523
    return-void
.end method
