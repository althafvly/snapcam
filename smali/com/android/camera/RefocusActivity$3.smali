.class Lcom/android/camera/RefocusActivity$3;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RefocusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/RefocusActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/RefocusActivity$3;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$3;->this$0:Lcom/android/camera/RefocusActivity;

    invoke-static {v0}, Lcom/android/camera/RefocusActivity;->access$600(Lcom/android/camera/RefocusActivity;)V

    .line 159
    return-void
.end method
