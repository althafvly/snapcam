.class Lcom/android/camera/WideAnglePanoramaModule$3$1;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/WideAnglePanoramaModule$3;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/WideAnglePanoramaModule$3;

    .line 329
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$3$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule$3$1;->this$1:Lcom/android/camera/WideAnglePanoramaModule$3;

    iget-object v0, v0, Lcom/android/camera/WideAnglePanoramaModule$3;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v0}, Lcom/android/camera/WideAnglePanoramaModule;->access$1800(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 333
    return-void
.end method
