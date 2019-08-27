.class final Lcom/android/camera/PhotoModule$MultiPPCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/MultiPPManager$PostProcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiPPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MultiPPCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MultiPPCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPostProcData([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 351
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onPostProcData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MultiPPCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, p1}, Lcom/android/camera/PhotoModule;->access$100(Lcom/android/camera/PhotoModule;[B)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MultiPPCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->buttonBokeh(Z)V

    .line 359
    return-void
.end method
