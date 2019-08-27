.class Lcom/android/camera/ui/FilmstripBottomControls$4;
.super Ljava/lang/Object;
.source "FilmstripBottomControls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilmstripBottomControls;->setVisibility(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/camera/ui/FilmstripBottomControls$4;->val$visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 138
    :cond_0
    const/4 v1, 0x4

    .line 137
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method
