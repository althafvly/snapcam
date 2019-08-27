.class public Lorg/codeaurora/snapcam/filter/GImage;
.super Ljava/lang/Object;
.source "GImage.java"


# static fields
.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/image/"

.field public static final PREFIX:Ljava/lang/String; = "GImage"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"


# instance fields
.field private mData:Ljava/lang/String;

.field private mMime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "mime"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GImage;->mMime:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/GImage;->mData:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/codeaurora/snapcam/filter/GImage;->mMime:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GImage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/GImage;->mMime:Ljava/lang/String;

    return-object v0
.end method
