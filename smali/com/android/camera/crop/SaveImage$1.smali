.class Lcom/android/camera/crop/SaveImage$1;
.super Ljava/lang/Object;
.source "SaveImage.java"

# interfaces
.implements Lcom/android/camera/crop/SaveImage$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/crop/SaveImage;->deleteAuxFiles(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fullPath:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/camera/crop/SaveImage$1;->val$fullPath:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 170
    iget-object v0, p0, Lcom/android/camera/crop/SaveImage$1;->val$fullPath:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    return-void
.end method
