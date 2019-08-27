.class Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;
.super Ljava/lang/Object;
.source "CameraControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProMenuButtonClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraControls;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/CameraControls;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/CameraControls$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/CameraControls;
    .param p2, "x1"    # Lcom/android/camera/ui/CameraControls$1;

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;-><init>(Lcom/android/camera/ui/CameraControls;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1141
    .local v0, "proValue":I
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$2800(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1142
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/camera/ui/CameraControls;->resetProParam(ZZI)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$2900(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1144
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/CameraControls;->access$3000(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->access$3100(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/ArcProgressbar;I)V

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$3200(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1146
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/CameraControls;->access$3300(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->access$3100(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/ArcProgressbar;I)V

    goto :goto_0

    .line 1147
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$3400(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1148
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/CameraControls;->access$3500(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->access$3100(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/ArcProgressbar;I)V

    goto :goto_0

    .line 1149
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$3600(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1150
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/CameraControls;->access$3700(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->access$3100(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/ArcProgressbar;I)V

    goto :goto_0

    .line 1151
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$3800(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1152
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    iget-object v2, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v2}, Lcom/android/camera/ui/CameraControls;->access$3900(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->access$3100(Lcom/android/camera/ui/CameraControls;Lcom/android/camera/ui/ArcProgressbar;I)V

    goto :goto_0

    .line 1153
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/CameraControls$ProMenuButtonClick;->this$0:Lcom/android/camera/ui/CameraControls;

    invoke-static {v1}, Lcom/android/camera/ui/CameraControls;->access$3900(Lcom/android/camera/ui/CameraControls;)Lcom/android/camera/ui/ArcProgressbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ArcProgressbar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0
.end method
