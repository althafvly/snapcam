.class Lcom/android/camera/ui/CountdownTimerPopup$1;
.super Ljava/lang/Object;
.source "CountdownTimerPopup.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CountdownTimerPopup;->initialize(Lcom/android/camera/ListPreference;Lcom/android/camera/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CountdownTimerPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CountdownTimerPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/CountdownTimerPopup;

    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/CountdownTimerPopup$1;->this$0:Lcom/android/camera/ui/CountdownTimerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/CountdownTimerPopup$1;->this$0:Lcom/android/camera/ui/CountdownTimerPopup;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountdownTimerPopup;->setTimeSelectionEnabled(Z)V

    .line 84
    return-void
.end method
