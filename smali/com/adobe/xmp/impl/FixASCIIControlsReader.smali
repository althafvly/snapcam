.class public Lcom/adobe/xmp/impl/FixASCIIControlsReader;
.super Ljava/io/PushbackReader;
.source "FixASCIIControlsReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8

.field private static final STATE_AMP:I = 0x1

.field private static final STATE_DIG1:I = 0x4

.field private static final STATE_ERROR:I = 0x5

.field private static final STATE_HASH:I = 0x2

.field private static final STATE_HEX:I = 0x3

.field private static final STATE_START:I


# instance fields
.field private control:I

.field private digits:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .line 50
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 39
    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 41
    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 51
    return-void
.end method

.method private processChar(C)C
    .locals 10
    .param p1, "ch"    # C

    .line 114
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    const/4 v1, 0x3

    const/16 v2, 0x3b

    const/4 v3, 0x4

    const/16 v4, 0xa

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    packed-switch v0, :pswitch_data_0

    .line 211
    return p1

    .line 206
    :pswitch_0
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 207
    return p1

    .line 154
    :pswitch_1
    if-gt v6, p1, :cond_1

    if-gt p1, v5, :cond_1

    .line 156
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/2addr v0, v4

    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 157
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 158
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v9, :cond_0

    .line 160
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 164
    :cond_0
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 167
    :cond_1
    if-ne p1, v2, :cond_2

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 170
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    return v0

    .line 174
    :cond_2
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 176
    :goto_0
    return p1

    .line 179
    :pswitch_2
    if-gt v6, p1, :cond_3

    if-le p1, v5, :cond_5

    :cond_3
    const/16 v0, 0x61

    if-gt v0, p1, :cond_4

    const/16 v0, 0x66

    if-le p1, v0, :cond_5

    :cond_4
    const/16 v0, 0x41

    if-gt v0, p1, :cond_7

    const/16 v0, 0x46

    if-gt p1, v0, :cond_7

    .line 183
    :cond_5
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    const/16 v2, 0x10

    mul-int/2addr v0, v2

    invoke-static {p1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 184
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 185
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v3, :cond_6

    .line 187
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_1

    .line 191
    :cond_6
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_1

    .line 194
    :cond_7
    if-ne p1, v2, :cond_8

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 197
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    return v0

    .line 201
    :cond_8
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 203
    :goto_1
    return p1

    .line 135
    :pswitch_3
    const/16 v0, 0x78

    if-ne p1, v0, :cond_9

    .line 137
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 138
    iput v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 139
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_2

    .line 141
    :cond_9
    if-gt v6, p1, :cond_a

    if-gt p1, v5, :cond_a

    .line 143
    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 144
    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 145
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_2

    .line 149
    :cond_a
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 151
    :goto_2
    return p1

    .line 124
    :pswitch_4
    const/16 v0, 0x23

    if-ne p1, v0, :cond_b

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_3

    .line 130
    :cond_b
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 132
    :goto_3
    return p1

    .line 117
    :pswitch_5
    const/16 v0, 0x26

    if-ne p1, v0, :cond_c

    .line 119
    iput v7, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 121
    :cond_c
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public read([CII)I
    .locals 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "readAhead":I
    const/4 v1, 0x0

    .line 61
    .local v1, "read":I
    move v2, p2

    .line 62
    .local v2, "pos":I
    const/16 v3, 0x8

    new-array v3, v3, [C

    .line 64
    .local v3, "readAheadBuffer":[C
    const/4 v4, 0x1

    move v5, v2

    move v2, v0

    move v0, v4

    .line 65
    .local v0, "available":Z
    .local v2, "readAhead":I
    .local v5, "pos":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    if-ge v1, p3, :cond_6

    .line 67
    invoke-super {p0, v3, v2, v4}, Ljava/io/PushbackReader;->read([CII)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v4, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    move v0, v6

    .line 68
    const/4 v6, 0x5

    if-eqz v0, :cond_5

    .line 70
    aget-char v8, v3, v2

    invoke-direct {p0, v8}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->processChar(C)C

    move-result v8

    .line 71
    .local v8, "c":C
    iget v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v9, :cond_3

    .line 74
    invoke-static {v8}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    const/16 v8, 0x20

    .line 78
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .local v6, "pos":I
    aput-char v8, p1, v5

    .line 79
    .end local v5    # "pos":I
    const/4 v2, 0x0

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 91
    move v5, v6

    goto :goto_2

    .line 82
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_3
    iget v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-ne v9, v6, :cond_4

    .line 84
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v3, v7, v6}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    .line 85
    const/4 v2, 0x0

    goto :goto_2

    .line 89
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 91
    .end local v8    # "c":C
    :goto_2
    goto :goto_0

    .line 92
    :cond_5
    if-lez v2, :cond_0

    .line 95
    invoke-virtual {p0, v3, v7, v2}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    .line 96
    iput v6, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 97
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_6
    if-gtz v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, -0x1

    goto :goto_4

    :cond_8
    :goto_3
    move v4, v1

    :goto_4
    return v4
.end method
