.class public Lcom/android/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif([B)Lcom/android/camera/exif/ExifInterface;
    .locals 4
    .param p0, "jpegData"    # [B

    .line 29
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 31
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "CameraExif"

    const-string v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getOrientation(Lcom/android/camera/exif/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .line 40
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    return v1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v1

    return v1
.end method

.method public static getOrientation([B)I
    .locals 2
    .param p0, "jpegData"    # [B

    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 52
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v1

    return v1
.end method
