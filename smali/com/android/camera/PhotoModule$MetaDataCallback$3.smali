.class Lcom/android/camera/PhotoModule$MetaDataCallback$3;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$MetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$MetaDataCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$MetaDataCallback;

    .line 1596
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$3;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1599
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$3;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7300(Lcom/android/camera/PhotoModule;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$3;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$3;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7300(Lcom/android/camera/PhotoModule;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1610
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MetaDataCallback$3;->this$1:Lcom/android/camera/PhotoModule$MetaDataCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$MetaDataCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableBokehFocus(Z)V

    .line 1612
    return-void
.end method
