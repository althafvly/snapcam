.class Lcom/applisto/appcloner/classes/OnAppExitListener$1;
.super Ljava/lang/Object;
.source "OnAppExitListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/OnAppExitListener;->onActivityDestroyed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/OnAppExitListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/OnAppExitListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/OnAppExitListener;

    .line 43
    iput-object p1, p0, Lcom/applisto/appcloner/classes/OnAppExitListener$1;->this$0:Lcom/applisto/appcloner/classes/OnAppExitListener;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/OnAppExitListener$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/applisto/appcloner/classes/OnAppExitListener$1;->this$0:Lcom/applisto/appcloner/classes/OnAppExitListener;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/OnAppExitListener$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applisto/appcloner/classes/OnAppExitListener;->onAppExit(Landroid/content/Context;)V

    .line 47
    return-void
.end method
