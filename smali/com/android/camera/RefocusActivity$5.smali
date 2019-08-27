.class Lcom/android/camera/RefocusActivity$5;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RefocusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/RefocusActivity;

    .line 170
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v0}, Lcom/android/camera/RefocusActivity;->access$700(Lcom/android/camera/RefocusActivity;)I

    move-result v0

    invoke-static {}, Lcom/android/camera/RefocusActivity;->access$800()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Lcom/android/camera/RefocusActivity$SaveImageTask;

    iget-object v1, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/android/camera/RefocusActivity$SaveImageTask;-><init>(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$1;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v4}, Lcom/android/camera/RefocusActivity;->access$100(Lcom/android/camera/RefocusActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/RefocusActivity;->access$800()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v5}, Lcom/android/camera/RefocusActivity;->access$700(Lcom/android/camera/RefocusActivity;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/RefocusActivity$SaveImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v0}, Lcom/android/camera/RefocusActivity;->finish()V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$5;->this$0:Lcom/android/camera/RefocusActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/RefocusActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    return-void
.end method
