.class Lcom/android/camera/crop/SaveImage$4;
.super Ljava/lang/Object;
.source "SaveImage.java"

# interfaces
.implements Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/crop/SaveImage;->getTrueFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$trueName:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/camera/crop/SaveImage$4;->val$trueName:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 434
    iget-object v0, p0, Lcom/android/camera/crop/SaveImage$4;->val$trueName:[Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 435
    return-void
.end method
