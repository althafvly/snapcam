.class Lcom/android/camera/SceneModeActivity$PageItems;
.super Ljava/lang/Object;
.source "SceneModeActivity.java"

# interfaces
.implements Lcom/android/camera/ui/DotsViewItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SceneModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageItems"
.end annotation


# instance fields
.field number:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/camera/SceneModeActivity$PageItems;->number:I

    .line 75
    return-void
.end method


# virtual methods
.method public getTotalItemNums()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/SceneModeActivity$PageItems;->number:I

    return v0
.end method

.method public isChosen(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
