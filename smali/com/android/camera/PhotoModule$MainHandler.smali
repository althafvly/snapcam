.class Lcom/android/camera/PhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    .line 737
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 738
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 742
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 863
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->isWaitingProgressShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    goto/16 :goto_0

    .line 855
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    goto/16 :goto_0

    .line 843
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 844
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$5102(Lcom/android/camera/PhotoModule;[B)[B

    .line 845
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v2, v2, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    goto/16 :goto_0

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    .line 850
    goto/16 :goto_0

    .line 831
    :pswitch_3
    const-string v0, "CAM_PhotoModule"

    const-string v1, "multi-pp timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/MultiPPManager;->getResult()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$100(Lcom/android/camera/PhotoModule;[B)V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v3}, Lcom/android/camera/PhotoModule;->access$5002(Lcom/android/camera/PhotoModule;I)I

    .line 837
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 839
    goto/16 :goto_0

    .line 825
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)V

    .line 826
    goto/16 :goto_0

    .line 820
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 821
    goto/16 :goto_0

    .line 815
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)V

    .line 816
    goto/16 :goto_0

    .line 810
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->onModuleSelected(I)V

    .line 811
    goto/16 :goto_0

    .line 803
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;I)V

    .line 804
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    .line 805
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v3

    .line 804
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 806
    goto :goto_0

    .line 796
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v4}, Lcom/android/camera/PhotoModule;->access$4402(Lcom/android/camera/PhotoModule;Z)Z

    .line 797
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0e0339

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 799
    goto :goto_0

    .line 786
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v4}, Lcom/android/camera/PhotoModule;->access$4302(Lcom/android/camera/PhotoModule;Z)Z

    .line 790
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 792
    goto :goto_0

    .line 781
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)V

    .line 782
    goto :goto_0

    .line 777
    :pswitch_c
    goto :goto_0

    .line 770
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4100(Lcom/android/camera/PhotoModule;)V

    .line 771
    goto :goto_0

    .line 765
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)V

    .line 766
    goto :goto_0

    .line 760
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v3}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;I)V

    .line 761
    goto :goto_0

    .line 749
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 751
    goto :goto_0

    .line 755
    :pswitch_11
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)V

    .line 756
    goto :goto_0

    .line 744
    :pswitch_12
    iget-object v0, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)V

    .line 745
    nop

    .line 872
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
