.class Lcom/android/camera/ui/FlashToggleButton$1;
.super Ljava/lang/Object;
.source "FlashToggleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FlashToggleButton;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FlashToggleButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FlashToggleButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FlashToggleButton;

    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v0}, Lcom/android/camera/ui/FlashToggleButton;->access$000(Lcom/android/camera/ui/FlashToggleButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v0}, Lcom/android/camera/ui/FlashToggleButton;->access$100(Lcom/android/camera/ui/FlashToggleButton;)[I

    move-result-object v0

    .line 89
    .local v0, "icons":[I
    const-string v1, "pref_camera2_video_flashmode_key"

    .local v1, "key":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v0    # "icons":[I
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v0}, Lcom/android/camera/ui/FlashToggleButton;->access$200(Lcom/android/camera/ui/FlashToggleButton;)[I

    move-result-object v0

    .line 92
    .restart local v0    # "icons":[I
    const-string v1, "pref_camera2_flashmode_key"

    .line 94
    .restart local v1    # "key":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    iget-object v3, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v3}, Lcom/android/camera/ui/FlashToggleButton;->access$300(Lcom/android/camera/ui/FlashToggleButton;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    rem-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/camera/ui/FlashToggleButton;->access$302(Lcom/android/camera/ui/FlashToggleButton;I)I

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v2}, Lcom/android/camera/ui/FlashToggleButton;->access$400(Lcom/android/camera/ui/FlashToggleButton;)Lcom/android/camera/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v3}, Lcom/android/camera/ui/FlashToggleButton;->access$300(Lcom/android/camera/ui/FlashToggleButton;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/SettingsManager;->setValueIndex(Ljava/lang/String;I)V

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/FlashToggleButton$1;->this$0:Lcom/android/camera/ui/FlashToggleButton;

    invoke-static {v2}, Lcom/android/camera/ui/FlashToggleButton;->access$500(Lcom/android/camera/ui/FlashToggleButton;)V

    .line 97
    return-void
.end method
