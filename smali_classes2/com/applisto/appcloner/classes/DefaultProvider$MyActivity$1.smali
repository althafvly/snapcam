.class Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1;
.super Ljava/lang/Object;
.source "DefaultProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;

    .line 1101
    iput-object p1, p0, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1;->this$0:Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1104
    iget-object v0, p0, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1;->this$0:Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;->finish()V

    .line 1105
    iget-object v0, p0, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1;->this$0:Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;->access$100(Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1$1;-><init>(Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1117
    return-void
.end method
