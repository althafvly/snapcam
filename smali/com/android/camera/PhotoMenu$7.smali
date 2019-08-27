.class Lcom/android/camera/PhotoMenu$7;
.super Ljava/lang/Object;
.source "PhotoMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoMenu;->initMakeupModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoMenu;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/android/camera/PhotoMenu$7;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1283
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$7;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$100(Lcom/android/camera/PhotoMenu;)Lcom/android/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getIsCaptureDoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1288
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$7;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v2}, Lcom/android/camera/PhotoMenu;->cancelShutterFocus()V

    .line 1290
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$7;->this$0:Lcom/android/camera/PhotoMenu;

    iget-object v2, v2, Lcom/android/camera/PhotoMenu;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_facedetection_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1291
    .local v0, "faceDetectPref":Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, "faceDetection":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/camera/PhotoMenu;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMakeupModeButton().onClick(): faceDetection is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    if-eqz v1, :cond_2

    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_OFF:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1294
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$7;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2, v0}, Lcom/android/camera/PhotoMenu;->access$500(Lcom/android/camera/PhotoMenu;Lcom/android/camera/ListPreference;)V

    goto :goto_0

    .line 1291
    .end local v1    # "faceDetection":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1296
    .restart local v1    # "faceDetection":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoMenu$7;->this$0:Lcom/android/camera/PhotoMenu;

    invoke-static {v2}, Lcom/android/camera/PhotoMenu;->access$600(Lcom/android/camera/PhotoMenu;)V

    goto :goto_0
.end method
