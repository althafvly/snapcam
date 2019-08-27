.class Lcom/applisto/appcloner/classes/PasswordActivity$8;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/PasswordActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/applisto/appcloner/classes/PasswordActivity;

    .line 376
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$802(Lcom/applisto/appcloner/classes/PasswordActivity$8;I)I
    .locals 0
    .param p0, "x0"    # Lcom/applisto/appcloner/classes/PasswordActivity$8;
    .param p1, "x1"    # I

    .line 376
    iput p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mCount:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    iget v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mCount:I

    .line 387
    iget v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$600(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$8;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/PasswordActivity$8$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$8$1;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$8;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    :goto_0
    return-void
.end method
