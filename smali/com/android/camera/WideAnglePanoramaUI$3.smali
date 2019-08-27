.class Lcom/android/camera/WideAnglePanoramaUI$3;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaUI;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 347
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI$3;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI$3;->this$0:Lcom/android/camera/WideAnglePanoramaUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/WideAnglePanoramaUI;->access$302(Lcom/android/camera/WideAnglePanoramaUI;Z)Z

    .line 351
    return-void
.end method
