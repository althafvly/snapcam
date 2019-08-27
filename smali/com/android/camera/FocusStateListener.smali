.class public Lcom/android/camera/FocusStateListener;
.super Ljava/lang/Object;
.source "FocusStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapCam_FocusStateListe"


# instance fields
.field private mUI:Lcom/android/camera/CaptureUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/camera/CaptureUI;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    .line 41
    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(I)V
    .locals 3
    .param p1, "focusState"    # I

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    const-string v0, "SnapCam_FocusStateListe"

    const-string v2, "CONTROL_AF_STATE_PASSIVE_UNFOCUSED onFocusFailed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->onFocusFailed(Z)V

    .line 68
    goto :goto_0

    .line 54
    :pswitch_1
    const-string v1, "SnapCam_FocusStateListe"

    const-string v2, "CONTROL_AF_STATE_NOT_FOCUSED_LOCKED onFocusFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureUI;->onFocusFailed(Z)V

    .line 56
    goto :goto_0

    .line 50
    :pswitch_2
    const-string v1, "SnapCam_FocusStateListe"

    const-string v2, "CONTROL_AF_STATE_FOCUSED_LOCKED onFocusSucceeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureUI;->onFocusSucceeded(Z)V

    .line 52
    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "SnapCam_FocusStateListe"

    const-string v1, "CONTROL_AF_STATE_ACTIVE_SCAN onFocusStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->onFocusStarted()V

    .line 48
    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "SnapCam_FocusStateListe"

    const-string v2, "CONTROL_AF_STATE_PASSIVE_FOCUSED onFocusSucceeded"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->onFocusSucceeded(Z)V

    .line 60
    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "SnapCam_FocusStateListe"

    const-string v1, "CONTROL_AF_STATE_PASSIVE_SCAN onFocusStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->onFocusStarted()V

    .line 64
    goto :goto_0

    .line 70
    :pswitch_6
    const-string v0, "SnapCam_FocusStateListe"

    const-string v1, "CONTROL_AF_STATE_INACTIVE clearFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/camera/FocusStateListener;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 74
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
