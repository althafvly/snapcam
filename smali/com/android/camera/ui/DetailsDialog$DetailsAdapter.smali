.class Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/DetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailsAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDecimalFormat:Ljava/text/DecimalFormat;

.field private final mDefaultLocale:Ljava/util/Locale;

.field private mHeightIndex:I

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDetails:Lcom/android/camera/data/MediaDetails;

.field private mWidthIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "details"    # Lcom/android/camera/data/MediaDetails;

    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    .line 79
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    .line 81
    iput v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mMediaDetails:Lcom/android/camera/data/MediaDetails;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/camera/data/MediaDetails;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V

    .line 88
    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "details"    # Lcom/android/camera/data/MediaDetails;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 91
    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 92
    .local v3, "resolutionIsValid":Z
    const/4 v4, 0x0

    .line 93
    .local v4, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 95
    .local v6, "detail":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0x7f0e0333

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v7, :sswitch_data_0

    .line 175
    move-object/from16 v21, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 178
    .local v5, "valueObj":Ljava/lang/Object;
    if-nez v5, :cond_6

    .line 179
    const-string v7, "%s\'s value is Null"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 181
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 180
    invoke-static {v1, v8}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 179
    invoke-static {v7, v9}, Lcom/android/camera/ui/DetailsDialog;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 161
    .end local v5    # "valueObj":Ljava/lang/Object;
    :sswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    goto :goto_1

    .line 168
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    .restart local v7    # "value":Ljava/lang/String;
    nop

    .line 183
    :goto_1
    move-object/from16 v21, v5

    goto/16 :goto_5

    .line 120
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 121
    .restart local v7    # "value":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 122
    .local v12, "time":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v12, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    if-gez v8, :cond_0

    .line 123
    iget-object v8, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v14, "%d/%d"

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v15, v10

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v18, v18, v12

    add-double v9, v16, v18

    double-to-int v9, v9

    .line 124
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v11

    .line 123
    invoke-static {v8, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 126
    :cond_0
    double-to-int v8, v12

    .line 127
    .local v8, "integer":I
    int-to-double v9, v8

    sub-double/2addr v12, v9

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 129
    const-wide v9, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v9, v12, v9

    if-lez v9, :cond_1

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v14, " %d/%d"

    move-object/from16 v21, v5

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v20, 0x0

    aput-object v15, v5, v20

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v18, v18, v12

    move-wide/from16 v22, v12

    add-double v11, v16, v18

    .end local v12    # "time":D
    .local v22, "time":D
    double-to-int v11, v11

    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v5, v12

    .line 130
    invoke-static {v10, v14, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "integer":I
    .local v5, "value":Ljava/lang/String;
    move-object v7, v5

    goto :goto_2

    .end local v5    # "value":Ljava/lang/String;
    .end local v22    # "time":D
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v12    # "time":D
    :cond_1
    move-object/from16 v21, v5

    move-wide/from16 v22, v12

    .end local v12    # "time":D
    .restart local v22    # "time":D
    :goto_2
    goto/16 :goto_5

    .line 102
    .end local v7    # "value":Ljava/lang/String;
    .end local v22    # "time":D
    :sswitch_3
    move-object/from16 v21, v5

    const-string v5, "1"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    const v5, 0x7f0e032f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 104
    :cond_2
    const v5, 0x7f0e0330

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v7, v5

    .line 105
    .restart local v7    # "value":Ljava/lang/String;
    goto/16 :goto_5

    .line 171
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v21, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 172
    .local v7, "focalLength":D
    invoke-direct {v0, v7, v8}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(D)Ljava/lang/String;

    move-result-object v5

    .line 173
    .restart local v5    # "value":Ljava/lang/String;
    nop

    .line 183
    move-object v7, v5

    goto/16 :goto_5

    .line 108
    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "focalLength":D
    :sswitch_5
    move-object/from16 v21, v5

    .line 109
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/MediaDetails$FlashState;

    .line 112
    .local v5, "flash":Lcom/android/camera/data/MediaDetails$FlashState;
    invoke-virtual {v5}, Lcom/android/camera/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 113
    const v7, 0x7f0e0331

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    goto/16 :goto_5

    .line 115
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    const v7, 0x7f0e0332

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 117
    .restart local v7    # "value":Ljava/lang/String;
    goto/16 :goto_5

    .line 97
    .end local v5    # "flash":Lcom/android/camera/data/MediaDetails$FlashState;
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v21, v5

    .line 98
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 97
    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 99
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_5

    .line 165
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v21, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_5

    .line 146
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    .line 147
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 148
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7    # "value":Ljava/lang/String;
    const/4 v3, 0x0

    goto :goto_5

    .line 151
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_5

    .line 137
    .end local v7    # "value":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    .line 138
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 140
    .restart local v7    # "value":Ljava/lang/String;
    const/4 v3, 0x0

    goto :goto_5

    .line 142
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_5

    .line 183
    .end local v7    # "value":Ljava/lang/String;
    .local v5, "valueObj":Ljava/lang/Object;
    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v5    # "valueObj":Ljava/lang/Object;
    .restart local v7    # "value":Ljava/lang/String;
    :goto_5
    move-object v5, v7

    .line 186
    .end local v7    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 187
    .local v7, "key":I
    invoke-virtual {v2, v7}, Lcom/android/camera/data/MediaDetails;->hasUnit(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 188
    const-string v8, "%s: %s %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    .line 189
    invoke-virtual {v2, v7}, Lcom/android/camera/data/MediaDetails;->getUnit(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 188
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 191
    :cond_7
    const/4 v11, 0x2

    const-string v8, "%s: %s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 194
    :goto_6
    iget-object v8, v0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "detail":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v7    # "key":I
    nop

    .line 93
    move-object/from16 v5, v21

    goto/16 :goto_0

    .line 196
    :cond_8
    if-nez v3, :cond_9

    .line 197
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->resolveResolution(Ljava/lang/String;)V

    .line 199
    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0xa -> :sswitch_6
        0x66 -> :sswitch_5
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "valueObj"    # Ljava/lang/Object;

    .line 266
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 267
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 275
    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 276
    :goto_0
    return-object v0
.end method

.method private toLocalNumber(D)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # D

    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toLocalNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mMediaDetails:Lcom/android/camera/data/MediaDetails;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "tv":Landroid/widget/TextView;
    goto :goto_0

    .line 240
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 242
    .restart local v0    # "tv":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onResolutionAvailable(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 247
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v1, "%s: %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x5

    .line 251
    invoke-static {v4, v5}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 250
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "widthString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v3, "%s: %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x6

    .line 254
    invoke-static {v4, v7}, Lcom/android/camera/ui/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 253
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "heightString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->notifyDataSetChanged()V

    .line 259
    return-void

    .line 248
    .end local v0    # "widthString":Ljava/lang/String;
    .end local v1    # "heightString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public resolveResolution(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 202
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 204
    return-void

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;->onResolutionAvailable(II)V

    .line 206
    return-void
.end method
