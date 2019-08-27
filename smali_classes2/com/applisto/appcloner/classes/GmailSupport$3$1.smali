.class Lcom/applisto/appcloner/classes/GmailSupport$3$1;
.super Landroid/content/ContextWrapper;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/GmailSupport$3;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field final synthetic this$1:Lcom/applisto/appcloner/classes/GmailSupport$3;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/GmailSupport$3;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/applisto/appcloner/classes/GmailSupport$3;
    .param p2, "x0"    # Landroid/content/Context;

    .line 276
    iput-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport$3$1;->this$1:Lcom/applisto/appcloner/classes/GmailSupport$3;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$3$1;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/applisto/appcloner/classes/GmailSupport$3$1$1;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/applisto/appcloner/classes/GmailSupport$3$1$1;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$3$1;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$3$1;->mClassLoader:Ljava/lang/ClassLoader;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$3$1;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method
