.class public Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;
.super Lcom/applisto/appcloner/classes/AbstractContentProvider;
.source "TrustAllCertificatesProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "TrustAllX509TrustManager"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AbstractContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 5

    .line 27
    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider$1;

    invoke-direct {v2, p0}, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider$1;-><init>(Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 47
    .local v1, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 48
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 49
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 51
    sget-object v3, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; now trusting all certificates..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/applisto/appcloner/classes/TrustAllCertificatesProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
