.class Lcom/android/camera/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/android/camera/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/android/camera/exif/ExifTag;I)V
    .locals 0
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;
    .param p2, "offset"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/exif/ExifModifier$TagOffset;->mTag:Lcom/android/camera/exif/ExifTag;

    .line 44
    iput p2, p0, Lcom/android/camera/exif/ExifModifier$TagOffset;->mOffset:I

    .line 45
    return-void
.end method
