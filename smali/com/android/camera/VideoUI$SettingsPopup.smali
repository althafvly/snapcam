.class Lcom/android/camera/VideoUI$SettingsPopup;
.super Landroid/widget/PopupWindow;
.source "VideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoUI;Landroid/view/View;)V
    .locals 3
    .param p2, "popup"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/camera/VideoUI$SettingsPopup;->this$0:Lcom/android/camera/VideoUI;

    .line 175
    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 176
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI$SettingsPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoUI$SettingsPopup;->setOutsideTouchable(Z)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoUI$SettingsPopup;->setFocusable(Z)V

    .line 179
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/camera/VideoUI$SettingsPopup;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-static {p1}, Lcom/android/camera/VideoUI;->access$000(Lcom/android/camera/VideoUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/camera/VideoUI$SettingsPopup;->showAtLocation(Landroid/view/View;III)V

    .line 182
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI$SettingsPopup;->dismiss(Z)V

    .line 199
    return-void
.end method

.method public dismiss(Z)V
    .locals 2
    .param p1, "topLevelOnly"    # Z

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/VideoUI$SettingsPopup;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$100(Lcom/android/camera/VideoUI;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/VideoUI$SettingsPopup;->this$0:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showUI()V

    .line 192
    iget-object v0, p0, Lcom/android/camera/VideoUI$SettingsPopup;->this$0:Lcom/android/camera/VideoUI;

    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 193
    return-void
.end method
