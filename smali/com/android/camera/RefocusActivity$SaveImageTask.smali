.class Lcom/android/camera/RefocusActivity$SaveImageTask;
.super Landroid/os/AsyncTask;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/RefocusActivity;Lcom/android/camera/RefocusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/RefocusActivity;
    .param p2, "x1"    # Lcom/android/camera/RefocusActivity$1;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/camera/RefocusActivity$SaveImageTask;-><init>(Lcom/android/camera/RefocusActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$SaveImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "path"    # [Ljava/lang/String;

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v0}, Lcom/android/camera/RefocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v1}, Lcom/android/camera/RefocusActivity;->access$1100(Lcom/android/camera/RefocusActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 215
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "in":Ljava/io/FileInputStream;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 218
    .local v3, "buf":[B
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    if-lez v4, :cond_0

    .line 219
    invoke-virtual {v0, v3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 222
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "buf":[B
    .end local v5    # "len":I
    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 225
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v2, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v2}, Lcom/android/camera/RefocusActivity;->access$1100(Lcom/android/camera/RefocusActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/RefocusActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/RefocusActivity$SaveImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 231
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$SaveImageTask;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-virtual {v0}, Lcom/android/camera/RefocusActivity;->finish()V

    .line 232
    return-void
.end method
