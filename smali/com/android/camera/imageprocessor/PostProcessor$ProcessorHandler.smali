.class Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
.super Landroid/os/Handler;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessorHandler"
.end annotation


# instance fields
.field isRunning:Z

.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 787
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 788
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    .line 790
    return-void
.end method


# virtual methods
.method public setInActive()V
    .locals 1

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    .line 794
    return-void
.end method
