.class Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;
.super Landroid/os/AsyncTask;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    .line 151
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 154
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 161
    .local v3, "width":I
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 162
    .local v4, "height":I
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 163
    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 164
    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$600(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F

    move-result v7

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$700(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F

    move-result v8

    .line 162
    invoke-static/range {v2 .. v8}, Lcom/android/camera/tinyplanet/TinyPlanetNative;->process(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v3    # "width":I
    .end local v4    # "height":I
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 167
    nop

    .line 168
    return-object v1

    .line 157
    :cond_1
    :goto_0
    nop

    .line 166
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    return-object v1

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .line 172
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$800(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v2, v2, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setBitmap(Landroid/graphics/Bitmap;Ljava/util/concurrent/locks/Lock;)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$002(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 175
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 177
    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$900(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    .line 179
    :cond_0
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
