.class Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;
.super Landroid/os/AsyncTask;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onCreateTinyPlanet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

.field final synthetic val$savingTinyPlanet:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    iput-object p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->val$savingTinyPlanet:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;)V
    .locals 14
    .param p1, "image"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    .prologue
    const/4 v6, 0x0

    .line 308
    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-virtual {v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraActivity;

    .line 309
    .local v0, "activity":Lcom/android/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 310
    .local v1, "mediaSaveService":Lcom/android/camera/MediaSaveService;
    new-instance v11, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;

    invoke-direct {v11, p0, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;Lcom/android/camera/CameraActivity;)V

    .line 321
    .local v11, "doneListener":Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TINYPLANET_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v4}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "tinyPlanetTitle":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->mJpegData:[B

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget v7, p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->mSize:I

    iget v8, p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->mSize:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 324
    invoke-virtual {v10}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 325
    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "jpeg"

    move-object v10, v6

    .line 322
    invoke-virtual/range {v1 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    invoke-virtual {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->onPostExecute(Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-virtual {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->val$savingTinyPlanet:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1302(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 298
    return-void
.end method
