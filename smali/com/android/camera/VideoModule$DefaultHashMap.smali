.class Lcom/android/camera/VideoModule$DefaultHashMap;
.super Ljava/util/HashMap;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 299
    .local p0, "this":Lcom/android/camera/VideoModule$DefaultHashMap;, "Lcom/android/camera/VideoModule$DefaultHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/android/camera/VideoModule$DefaultHashMap;, "Lcom/android/camera/VideoModule$DefaultHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule$DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lcom/android/camera/VideoModule$DefaultHashMap;, "Lcom/android/camera/VideoModule$DefaultHashMap<TK;TV;>;"
    .local p1, "toCheck":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/android/camera/VideoModule$DefaultHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 315
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 317
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    .local v2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    return-object v1

    .line 322
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "val":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public putDefault(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Lcom/android/camera/VideoModule$DefaultHashMap;, "Lcom/android/camera/VideoModule$DefaultHashMap<TK;TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/android/camera/VideoModule$DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .line 304
    return-void
.end method
