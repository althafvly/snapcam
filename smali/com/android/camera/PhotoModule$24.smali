.class Lcom/android/camera/PhotoModule$24;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->qcomUpdateCameraParametersPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .line 4848
    iput-object p1, p0, Lcom/android/camera/PhotoModule$24;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4850
    iget-object v0, p0, Lcom/android/camera/PhotoModule$24;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4851
    iget-object v0, p0, Lcom/android/camera/PhotoModule$24;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/GraphView;->setVisibility(I)V

    .line 4852
    :cond_0
    return-void
.end method
