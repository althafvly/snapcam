.class Lcom/android/camera/BestpictureActivity$SaveImageTask;
.super Landroid/os/AsyncTask;
.source "BestpictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BestpictureActivity;
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
.field final synthetic this$0:Lcom/android/camera/BestpictureActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/BestpictureActivity;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BestpictureActivity;Lcom/android/camera/BestpictureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BestpictureActivity;
    .param p2, "x1"    # Lcom/android/camera/BestpictureActivity$1;

    .line 633
    invoke-direct {p0, p1}, Lcom/android/camera/BestpictureActivity$SaveImageTask;-><init>(Lcom/android/camera/BestpictureActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 633
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/BestpictureActivity$SaveImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12
    .param p1, "path"    # [Ljava/lang/String;

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 636
    .local v0, "captureStartTime":J
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$2100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 637
    iget-object v2, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-static {v2}, Lcom/android/camera/BestpictureActivity;->access$2100(Lcom/android/camera/BestpictureActivity;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 638
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 639
    .local v4, "title":Ljava/lang/String;
    :goto_0
    const-string v5, "jpeg"

    invoke-static {v4, v5}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "outPath":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 642
    .local v6, "out":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/FileInputStream;

    const/4 v8, 0x0

    aget-object v9, p1, v8

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 643
    .local v7, "in":Ljava/io/FileInputStream;
    const/16 v9, 0x1000

    new-array v9, v9, [B

    .line 645
    .local v9, "buf":[B
    :goto_1
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v11, v10

    .local v11, "len":I
    if-lez v10, :cond_1

    .line 646
    invoke-virtual {v6, v9, v8, v11}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 649
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v9    # "buf":[B
    .end local v11    # "len":I
    goto :goto_2

    .line 650
    :catch_0
    move-exception v6

    .line 652
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 653
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v7, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 654
    .local v7, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/camera/BestpictureActivity$SaveImageTask;->this$0:Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v8, v7}, Lcom/android/camera/BestpictureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 633
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/BestpictureActivity$SaveImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .line 659
    return-void
.end method
