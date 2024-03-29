.class public Lcom/android/camera/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# static fields
.field private static final DISABLED_ALPHA:I = 0x66

.field private static final ENABLED_ALPHA:I = 0xff


# instance fields
.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 33
    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 54
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(I)V

    goto :goto_0

    .line 47
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(I)V

    .line 50
    :cond_1
    :goto_0
    return-void
.end method
