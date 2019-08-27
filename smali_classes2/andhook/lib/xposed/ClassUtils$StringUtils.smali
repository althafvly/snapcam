.class final Landhook/lib/xposed/ClassUtils$StringUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/ClassUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringUtils"
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/String; = ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 63
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 67
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 68
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 69
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .line 69
    .local v2, "i":I
    .local v4, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    add-int/lit8 v5, v4, 0x1

    .line 71
    .local v5, "count":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v4

    .line 69
    .end local v4    # "count":I
    move v4, v5

    .line 69
    .end local v5    # "count":I
    .restart local v4    # "count":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_2
    if-ne v4, v0, :cond_3

    .line 75
    return-object p0

    .line 77
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 64
    .end local v0    # "sz":I
    .end local v1    # "chs":[C
    .end local v4    # "count":I
    :cond_4
    :goto_1
    return-object p0
.end method
