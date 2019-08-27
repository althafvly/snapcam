.class Lcom/applisto/appcloner/classes/PasswordActivity$5$1;
.super Lcom/applisto/appcloner/classes/WindowCallbackDelegate;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity$5;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$1:Lcom/applisto/appcloner/classes/PasswordActivity$5;

.field final synthetic val$longPressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity$5;Landroid/view/Window$Callback;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "this$1"    # Lcom/applisto/appcloner/classes/PasswordActivity$5;
    .param p2, "x0"    # Landroid/view/Window$Callback;

    .line 266
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$5$1;->this$1:Lcom/applisto/appcloner/classes/PasswordActivity$5;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/PasswordActivity$5$1;->val$longPressRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/WindowCallbackDelegate;-><init>(Landroid/view/Window$Callback;)V

    .line 268
    new-instance p3, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$5$1;->this$1:Lcom/applisto/appcloner/classes/PasswordActivity$5;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/PasswordActivity$5;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/applisto/appcloner/classes/PasswordActivity$5$1$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$5$1$1;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$5$1;)V

    invoke-direct {p3, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/applisto/appcloner/classes/PasswordActivity$5$1;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 281
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$5$1;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/WindowCallbackDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
