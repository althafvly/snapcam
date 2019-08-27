.class public Lcom/android/camera/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field public static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 78
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    .line 79
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 80
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 81
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v2, 0x4

    aput v2, v0, v2

    .line 82
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v3, 0x8

    const/4 v4, 0x5

    aput v3, v0, v4

    .line 83
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v4, 0x7

    aput v1, v0, v4

    .line 84
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 85
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-short p1, p0, Lcom/android/camera/exif/ExifTag;->mTagId:S

    .line 130
    iput-short p2, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    .line 131
    iput p3, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 132
    iput-boolean p5, p0, Lcom/android/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 133
    iput p4, p0, Lcom/android/camera/exif/ExifTag;->mIfd:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 883
    iget-boolean v0, p0, Lcom/android/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 884
    const/4 v0, 0x1

    return v0

    .line 886
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkOverflowForRational([Lcom/android/camera/exif/Rational;)Z
    .locals 8
    .param p1, "value"    # [Lcom/android/camera/exif/Rational;

    .line 951
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 952
    .local v3, "v":Lcom/android/camera/exif/Rational;
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 953
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 954
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    .line 951
    .end local v3    # "v":Lcom/android/camera/exif/Rational;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    .restart local v3    # "v":Lcom/android/camera/exif/Rational;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 958
    .end local v3    # "v":Lcom/android/camera/exif/Rational;
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4
    .param p1, "value"    # [I

    .line 931
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 932
    .local v3, "v":I
    if-gez v3, :cond_0

    .line 933
    const/4 v0, 0x1

    return v0

    .line 931
    .end local v3    # "v":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    :cond_1
    return v1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 7
    .param p1, "value"    # [J

    .line 922
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    .line 923
    .local v3, "v":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide v5, 0xffffffffL

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    goto :goto_1

    .line 922
    .end local v3    # "v":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 924
    .restart local v3    # "v":J
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 927
    .end local v3    # "v":J
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/camera/exif/Rational;)Z
    .locals 8
    .param p1, "value"    # [Lcom/android/camera/exif/Rational;

    .line 940
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 941
    .local v3, "v":Lcom/android/camera/exif/Rational;
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 942
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 943
    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    .line 940
    .end local v3    # "v":Lcom/android/camera/exif/Rational;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    .restart local v3    # "v":Lcom/android/camera/exif/Rational;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 947
    .end local v3    # "v":Lcom/android/camera/exif/Rational;
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .line 913
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 914
    .local v3, "v":I
    const v4, 0xffff

    if-gt v3, v4, :cond_1

    if-gez v3, :cond_0

    goto :goto_1

    .line 913
    .end local v3    # "v":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    .restart local v3    # "v":I
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 918
    .end local v3    # "v":I
    :cond_2
    return v1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .line 890
    packed-switch p0, :pswitch_data_0

    .line 908
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 906
    :pswitch_1
    const-string v0, "RATIONAL"

    return-object v0

    .line 904
    :pswitch_2
    const-string v0, "LONG"

    return-object v0

    .line 902
    :pswitch_3
    const-string v0, "UNDEFINED"

    return-object v0

    .line 900
    :pswitch_4
    const-string v0, "UNSIGNED_RATIONAL"

    return-object v0

    .line 898
    :pswitch_5
    const-string v0, "UNSIGNED_LONG"

    return-object v0

    .line 896
    :pswitch_6
    const-string v0, "UNSIGNED_SHORT"

    return-object v0

    .line 894
    :pswitch_7
    const-string v0, "ASCII"

    return-object v0

    .line 892
    :pswitch_8
    const-string v0, "UNSIGNED_BYTE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .line 150
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .line 111
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .line 120
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 963
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 964
    return v0

    .line 966
    :cond_0
    instance-of v1, p1, Lcom/android/camera/exif/ExifTag;

    if-eqz v1, :cond_c

    .line 967
    move-object v1, p1

    check-cast v1, Lcom/android/camera/exif/ExifTag;

    .line 968
    .local v1, "tag":Lcom/android/camera/exif/ExifTag;
    iget-short v2, v1, Lcom/android/camera/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_b

    iget v2, v1, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_b

    iget-short v2, v1, Lcom/android/camera/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 973
    :cond_1
    iget-object v2, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 974
    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 975
    return v0

    .line 976
    :cond_2
    iget-object v2, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_4

    .line 977
    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-nez v2, :cond_3

    .line 978
    return v0

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 981
    :cond_4
    iget-object v2, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/camera/exif/Rational;

    if-eqz v2, :cond_6

    .line 982
    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/camera/exif/Rational;

    if-nez v2, :cond_5

    .line 983
    return v0

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/exif/Rational;

    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/android/camera/exif/Rational;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 986
    :cond_6
    iget-object v2, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_8

    .line 987
    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-nez v2, :cond_7

    .line 988
    return v0

    .line 990
    :cond_7
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 992
    :cond_8
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 995
    :cond_9
    iget-object v2, v1, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_a

    const/4 v0, 0x1

    nop

    :cond_a
    return v0

    .line 971
    :cond_b
    :goto_0
    return v0

    .line 998
    .end local v1    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_c
    return v0
.end method

.method public forceGetValueAsLong(J)J
    .locals 9
    .param p1, "defaultValue"    # J

    .line 729
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 730
    .local v0, "l":[J
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lt v3, v1, :cond_0

    .line 731
    aget-wide v1, v0, v2

    return-wide v1

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v3

    .line 734
    .local v3, "b":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lt v4, v1, :cond_1

    .line 735
    aget-byte v1, v3, v2

    int-to-long v1, v1

    return-wide v1

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsRationals()[Lcom/android/camera/exif/Rational;

    move-result-object v4

    .line 738
    .local v4, "r":[Lcom/android/camera/exif/Rational;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lt v5, v1, :cond_2

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/android/camera/exif/Rational;->getDenominator()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 739
    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v1

    double-to-long v1, v1

    return-wide v1

    .line 741
    :cond_2
    return-wide p1
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 749
    const-string v0, ""

    return-object v0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 751
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 752
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v2, :cond_3

    .line 758
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 763
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_6

    .line 764
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 765
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 766
    const-string v1, ""

    return-object v1

    .line 768
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 771
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :cond_7
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 214
    iput p1, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 215
    return-void
.end method

.method public getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 837
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/exif/ExifTag;->getBytes([BII)V

    .line 838
    return-void
.end method

.method public getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 851
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    .line 853
    invoke-static {v2}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 856
    iget v2, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_2

    iget v2, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    goto :goto_1

    .line 855
    :cond_2
    move v2, p3

    :goto_1
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/camera/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .line 190
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->mIfd:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 864
    iget v0, p0, Lcom/android/camera/exif/ExifTag;->mOffset:I

    return v0
.end method

.method public getRational(I)Lcom/android/camera/exif/Rational;
    .locals 3
    .param p1, "index"    # I

    .line 826
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    .line 828
    invoke-static {v2}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStringByte()[B
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .line 174
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsByte(B)B
    .locals 3
    .param p1, "defaultValue"    # B

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 592
    .local v0, "b":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1

    .line 593
    :cond_1
    :goto_0
    return p1
.end method

.method public getValueAsBytes()[B
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    .line 578
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 675
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    .line 676
    .local v0, "i":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 677
    :cond_1
    :goto_0
    return p1
.end method

.method public getValueAsInts()[I
    .locals 5

    .line 652
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 653
    return-object v1

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    .line 656
    .local v0, "val":[J
    array-length v1, v0

    new-array v1, v1, [I

    .line 657
    .local v1, "arr":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 658
    aget-wide v3, v0, v2

    long-to-int v3, v3

    aput v3, v1, v2

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 662
    .end local v0    # "val":[J
    .end local v1    # "arr":[I
    :cond_2
    return-object v1
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .line 706
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 707
    .local v0, "l":[J
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1

    .line 708
    :cond_1
    :goto_0
    return-wide p1
.end method

.method public getValueAsLongs()[J
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0

    .line 693
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsRational(J)Lcom/android/camera/exif/Rational;
    .locals 3
    .param p1, "defaultValue"    # J

    .line 640
    new-instance v0, Lcom/android/camera/exif/Rational;

    const-wide/16 v1, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 641
    .local v0, "defaultVal":Lcom/android/camera/exif/Rational;
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/Rational;
    .locals 3
    .param p1, "defaultValue"    # Lcom/android/camera/exif/Rational;

    .line 622
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsRationals()[Lcom/android/camera/exif/Rational;

    move-result-object v0

    .line 623
    .local v0, "r":[Lcom/android/camera/exif/Rational;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 624
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getValueAsRationals()[Lcom/android/camera/exif/Rational;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/android/camera/exif/Rational;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/exif/Rational;

    return-object v0

    .line 609
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 542
    return-object v1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 546
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 548
    :cond_2
    return-object v1
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 560
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 562
    return-object p1

    .line 564
    :cond_0
    return-object v0
.end method

.method public getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .line 789
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    .line 795
    invoke-static {v2}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lcom/android/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .line 875
    iput-boolean p1, p0, Lcom/android/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 876
    return-void
.end method

.method public setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .line 167
    iput p1, p0, Lcom/android/camera/exif/ExifTag;->mIfd:I

    .line 168
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 871
    iput p1, p0, Lcom/android/camera/exif/ExifTag;->mOffset:I

    .line 872
    return-void
.end method

.method public setTimeValue(J)Z
    .locals 3
    .param p1, "time"    # J

    .line 528
    sget-object v0, Lcom/android/camera/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 529
    :try_start_0
    sget-object v1, Lcom/android/camera/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setValue(B)Z
    .locals 2
    .param p1, "value"    # B

    .line 442
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 2
    .param p1, "value"    # J

    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/android/camera/exif/Rational;)Z
    .locals 2
    .param p1, "value"    # Lcom/android/camera/exif/Rational;

    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/exif/Rational;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 458
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 459
    return v0

    .line 460
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    const v2, 0xffff

    if-eqz v1, :cond_1

    .line 461
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    and-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    move-result v0

    return v0

    .line 462
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 463
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 464
    :cond_2
    instance-of v1, p1, [I

    if-eqz v1, :cond_3

    .line 465
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0

    .line 466
    :cond_3
    instance-of v1, p1, [J

    if-eqz v1, :cond_4

    .line 467
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0

    .line 468
    :cond_4
    instance-of v1, p1, Lcom/android/camera/exif/Rational;

    if-eqz v1, :cond_5

    .line 469
    move-object v0, p1

    check-cast v0, Lcom/android/camera/exif/Rational;

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue(Lcom/android/camera/exif/Rational;)Z

    move-result v0

    return v0

    .line 470
    :cond_5
    instance-of v1, p1, [Lcom/android/camera/exif/Rational;

    if-eqz v1, :cond_6

    .line 471
    move-object v0, p1

    check-cast v0, [Lcom/android/camera/exif/Rational;

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/exif/Rational;)Z

    move-result v0

    return v0

    .line 472
    :cond_6
    instance-of v1, p1, [B

    if-eqz v1, :cond_7

    .line 473
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0

    .line 474
    :cond_7
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 475
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    move-result v0

    return v0

    .line 476
    :cond_8
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 477
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue(J)Z

    move-result v0

    return v0

    .line 478
    :cond_9
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_a

    .line 479
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->setValue(B)Z

    move-result v0

    return v0

    .line 480
    :cond_a
    instance-of v1, p1, [Ljava/lang/Short;

    if-eqz v1, :cond_d

    .line 482
    move-object v1, p1

    check-cast v1, [Ljava/lang/Short;

    .line 483
    .local v1, "arr":[Ljava/lang/Short;
    array-length v3, v1

    new-array v3, v3, [I

    .line 484
    .local v3, "fin":[I
    move v4, v0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_c

    .line 485
    aget-object v5, v1, v4

    if-nez v5, :cond_b

    move v5, v0

    goto :goto_1

    :cond_b
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    and-int/2addr v5, v2

    :goto_1
    aput v5, v3, v4

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 487
    .end local v4    # "i":I
    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0

    .line 488
    .end local v1    # "arr":[Ljava/lang/Short;
    .end local v3    # "fin":[I
    :cond_d
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 490
    move-object v1, p1

    check-cast v1, [Ljava/lang/Integer;

    .line 491
    .local v1, "arr":[Ljava/lang/Integer;
    array-length v2, v1

    new-array v2, v2, [I

    .line 492
    .local v2, "fin":[I
    move v3, v0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_f

    .line 493
    aget-object v4, v1, v3

    if-nez v4, :cond_e

    move v4, v0

    goto :goto_3

    :cond_e
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    aput v4, v2, v3

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 495
    .end local v3    # "i":I
    :cond_f
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0

    .line 496
    .end local v1    # "arr":[Ljava/lang/Integer;
    .end local v2    # "fin":[I
    :cond_10
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_13

    .line 498
    move-object v1, p1

    check-cast v1, [Ljava/lang/Long;

    .line 499
    .local v1, "arr":[Ljava/lang/Long;
    array-length v2, v1

    new-array v2, v2, [J

    .line 500
    .local v2, "fin":[J
    nop

    .local v0, "i":I
    :goto_4
    array-length v3, v1

    if-ge v0, v3, :cond_12

    .line 501
    aget-object v3, v1, v0

    if-nez v3, :cond_11

    const-wide/16 v3, 0x0

    goto :goto_5

    :cond_11
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_5
    aput-wide v3, v2, v0

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 503
    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0

    .line 504
    .end local v1    # "arr":[Ljava/lang/Long;
    .end local v2    # "fin":[J
    :cond_13
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_16

    .line 506
    move-object v1, p1

    check-cast v1, [Ljava/lang/Byte;

    .line 507
    .local v1, "arr":[Ljava/lang/Byte;
    array-length v2, v1

    new-array v2, v2, [B

    .line 508
    .local v2, "fin":[B
    move v3, v0

    .restart local v3    # "i":I
    :goto_6
    array-length v4, v1

    if-ge v3, v4, :cond_15

    .line 509
    aget-object v4, v1, v3

    if-nez v4, :cond_14

    move v4, v0

    goto :goto_7

    :cond_14
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    :goto_7
    aput-byte v4, v2, v3

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 511
    .end local v3    # "i":I
    :cond_15
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0

    .line 513
    .end local v1    # "arr":[Ljava/lang/Byte;
    .end local v2    # "fin":[B
    :cond_16
    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 328
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-eq v0, v1, :cond_0

    .line 329
    return v3

    .line 332
    :cond_0
    sget-object v0, Lcom/android/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 333
    .local v0, "buf":[B
    move-object v4, v0

    .line 334
    .local v4, "finalBuf":[B
    array-length v5, v0

    const/4 v6, 0x1

    if-lez v5, :cond_3

    .line 335
    array-length v2, v0

    sub-int/2addr v2, v6

    aget-byte v2, v0, v2

    if-eqz v2, :cond_2

    iget-short v2, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    array-length v1, v0

    add-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    :goto_1
    move-object v4, v1

    goto :goto_2

    .line 337
    :cond_3
    iget-short v1, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v6, :cond_4

    .line 338
    new-array v1, v6, [B

    aput-byte v3, v1, v3

    move-object v4, v1

    .line 340
    :cond_4
    :goto_2
    array-length v1, v4

    .line 341
    .local v1, "count":I
    invoke-direct {p0, v1}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    return v3

    .line 344
    :cond_5
    iput v1, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 345
    iput-object v4, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 346
    return v6
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .line 428
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 412
    invoke-direct {p0, p3}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 413
    return v1

    .line 415
    :cond_0
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    .line 416
    return v1

    .line 418
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iput p3, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 421
    return v2
.end method

.method public setValue([I)Z
    .locals 5
    .param p1, "value"    # [I

    .line 237
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    return v1

    .line 240
    :cond_0
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    .line 242
    return v1

    .line 244
    :cond_1
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    return v1

    .line 246
    :cond_2
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    return v1

    .line 250
    :cond_3
    array-length v0, p1

    new-array v0, v0, [J

    .line 251
    .local v0, "data":[J
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 252
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_4
    iput-object v0, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 255
    array-length v1, p1

    iput v1, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 256
    const/4 v1, 0x1

    return v1
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .line 287
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    return v1

    .line 293
    :cond_1
    iput-object p1, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 294
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 295
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_2
    :goto_0
    return v1
.end method

.method public setValue([Lcom/android/camera/exif/Rational;)Z
    .locals 4
    .param p1, "value"    # [Lcom/android/camera/exif/Rational;

    .line 364
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    return v1

    .line 367
    :cond_0
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    .line 368
    return v1

    .line 370
    :cond_1
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/camera/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    return v1

    .line 372
    :cond_2
    iget-short v0, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifTag;->checkOverflowForRational([Lcom/android/camera/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    return v1

    .line 376
    :cond_3
    iput-object p1, p0, Lcom/android/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 377
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/android/camera/exif/ExifTag;->mTagId:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/camera/exif/ExifTag;->mDataType:S

    .line 1004
    invoke-static {v1}, Lcom/android/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    return-object v0
.end method
