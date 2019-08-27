.class Lcom/android/camera/ui/InLineSettingCheckBox$1;
.super Ljava/lang/Object;
.source "InLineSettingCheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingCheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/InLineSettingCheckBox;

    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingCheckBox$1;->this$0:Lcom/android/camera/ui/InLineSettingCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingCheckBox$1;->this$0:Lcom/android/camera/ui/InLineSettingCheckBox;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/InLineSettingCheckBox;->changeIndex(I)Z

    .line 37
    return-void
.end method
