.class Lcom/android/camera/PhotoModule$17;
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

    .line 4665
    iput-object p1, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4668
    iget-object v0, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_facedetection_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 4670
    return-void
.end method
