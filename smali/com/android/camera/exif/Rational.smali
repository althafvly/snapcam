.class public Lcom/android/camera/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "nominator"    # J
    .param p3, "denominator"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/android/camera/exif/Rational;->mNumerator:J

    .line 36
    iput-wide p3, p0, Lcom/android/camera/exif/Rational;->mDenominator:J

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/exif/Rational;)V
    .locals 2
    .param p1, "r"    # Lcom/android/camera/exif/Rational;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-wide v0, p1, Lcom/android/camera/exif/Rational;->mNumerator:J

    iput-wide v0, p0, Lcom/android/camera/exif/Rational;->mNumerator:J

    .line 44
    iget-wide v0, p1, Lcom/android/camera/exif/Rational;->mDenominator:J

    iput-wide v0, p0, Lcom/android/camera/exif/Rational;->mDenominator:J

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 75
    return v1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/android/camera/exif/Rational;

    if-eqz v2, :cond_3

    .line 78
    move-object v2, p1

    check-cast v2, Lcom/android/camera/exif/Rational;

    .line 79
    .local v2, "data":Lcom/android/camera/exif/Rational;
    iget-wide v3, p0, Lcom/android/camera/exif/Rational;->mNumerator:J

    iget-wide v5, v2, Lcom/android/camera/exif/Rational;->mNumerator:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/camera/exif/Rational;->mDenominator:J

    iget-wide v5, v2, Lcom/android/camera/exif/Rational;->mDenominator:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 81
    .end local v2    # "data":Lcom/android/camera/exif/Rational;
    :cond_3
    return v0
.end method

.method public getDenominator()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/android/camera/exif/Rational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/android/camera/exif/Rational;->mNumerator:J

    return-wide v0
.end method

.method public toDouble()D
    .locals 4

    .line 66
    iget-wide v0, p0, Lcom/android/camera/exif/Rational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/camera/exif/Rational;->mDenominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/camera/exif/Rational;->mNumerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/exif/Rational;->mDenominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
