.class public Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;
.super Lorg/apache/http/impl/client/secgbaclient/GbaRequest;
.source "NafRequest.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "NafRequest"

.field public static gbaType:Ljava/lang/String;


# instance fields
.field private ccm:Lorg/apache/http/conn/ClientConnectionManager;

.field private gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

.field private nafAuthorizationHeaderVal:Ljava/lang/String;

.field private nafHost:Lorg/apache/http/HttpHost;

.field public nafHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private nafRequest:Lorg/apache/http/HttpRequest;

.field private requestDirector:Lorg/apache/http/client/RequestDirector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;-><init>(Ljava/lang/String;)V

    .line 121
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    .line 123
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    .line 131
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->requestDirector:Lorg/apache/http/client/RequestDirector;

    .line 151
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NafRequest constructor===useragent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private addGBASupport()V
    .locals 7

    .prologue
    .line 566
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 568
    .local v2, "preDefinedHeader":Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 570
    .local v0, "headerValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 576
    .local v1, "newHeaderValue":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Predefined Header :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    if-eqz v2, :cond_1

    .line 582
    new-instance v0, Ljava/lang/String;

    .end local v0    # "headerValue":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 585
    .restart local v0    # "headerValue":Ljava/lang/String;
    const-string v3, "3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 588
    const-string v3, " 3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    :goto_0
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserAgent Header :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void

    .line 594
    :cond_0
    move-object v1, v0

    goto :goto_0

    .line 602
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0    # "headerValue":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 604
    .restart local v0    # "headerValue":Ljava/lang/String;
    const-string v3, " 3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentCipherSuite(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 2
    .param p1, "director"    # Lorg/apache/http/client/RequestDirector;
    .param p2, "reqContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 350
    .local v0, "cipherSuite":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuiteFromRequestDirector(Lorg/apache/http/client/RequestDirector;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 380
    :goto_0
    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuiteFromRequestContext(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_0
    return-object v0

    .line 352
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentCipherSuiteFromRequestContext(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 7
    .param p1, "reqContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 400
    const/4 v2, 0x0

    .line 402
    .local v2, "usedCipherSuiteName":Ljava/lang/String;
    const-string v3, "http.connection"

    invoke-interface {p1, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    .line 404
    .local v0, "clientConn":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v0, :cond_1

    .line 408
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    const-string v5, "Got the connection from the httpContext"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 412
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_0

    .line 416
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 418
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CipherSuite negotiated is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v1    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_0
    :goto_0
    return-object v2

    .line 430
    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    const-string v5, "Client coonection is null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentCipherSuiteFromRequestDirector(Lorg/apache/http/client/RequestDirector;)Ljava/lang/String;
    .locals 10
    .param p1, "director"    # Lorg/apache/http/client/RequestDirector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v6, 0x0

    .line 448
    .local v6, "usedCipherSuiteName":Ljava/lang/String;
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Getting CipherSuite from request Director"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz p1, :cond_3

    instance-of v7, p1, Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v7, :cond_3

    move-object v0, p1

    .line 456
    check-cast v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 460
    .local v0, "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 466
    .local v4, "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    const-string v7, "managedConn"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 468
    .local v2, "mangdConnField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    .line 472
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 474
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 478
    .local v3, "mangdConnFieldValue":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v7, v3, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v7, :cond_1

    move-object v1, v3

    .line 484
    check-cast v1, Lorg/apache/http/conn/ManagedClientConnection;

    .line 488
    .local v1, "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 492
    .local v5, "sslSession":Ljavax/net/ssl/SSLSession;
    if-eqz v5, :cond_0

    .line 496
    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    .line 544
    .end local v0    # "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v1    # "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    .end local v2    # "mangdConnField":Ljava/lang/reflect/Field;
    .end local v3    # "mangdConnFieldValue":Ljava/lang/Object;
    .end local v4    # "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    .end local v5    # "sslSession":Ljavax/net/ssl/SSLSession;
    :goto_0
    return-object v6

    .line 504
    .restart local v0    # "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local v1    # "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    .restart local v2    # "mangdConnField":Ljava/lang/reflect/Field;
    .restart local v3    # "mangdConnFieldValue":Ljava/lang/Object;
    .restart local v4    # "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    .restart local v5    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_0
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "SSL Session is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    .end local v1    # "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    .end local v5    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_1
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Mangd Connection Field Value is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    .end local v3    # "mangdConnFieldValue":Ljava/lang/Object;
    :cond_2
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "MangdConnField is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .end local v0    # "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v2    # "mangdConnField":Ljava/lang/reflect/Field;
    .end local v4    # "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    :cond_3
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Director is null or not instance of DefaultRequestDirector"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static registerClientConnection(Lorg/apache/http/client/HttpClient;)V
    .locals 5
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 828
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest$1;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest$1;-><init>()V

    .line 888
    .local v0, "socketFactory":Lorg/apache/http/conn/scheme/SocketFactory;
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 892
    return-void
.end method


# virtual methods
.method public addAuthorizationHeader()V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v1, "Authorization"

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 636
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    const-string v2, "Authorization header is Null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized create(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V
    .locals 3
    .param p1, "Request"    # Lorg/apache/http/HttpRequest;
    .param p2, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    .line 173
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    .line 183
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->getServiceWrapper()Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    .line 187
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getImei()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->imeiVal:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getImpi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    .line 195
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->setDomain(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->isGbaUiccSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    const-string v0, "gba-u"

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    .line 218
    :goto_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addGBASupport()V

    .line 220
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addAuthorizationHeader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_1
    const-string v0, "gba-me"

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_1
    :try_start_2
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    const-string v2, "GBA Service is not running or binding failed"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getCurrentNafreq()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 744
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 746
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 750
    new-instance v3, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 752
    .local v3, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 756
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 758
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 760
    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 762
    const v4, 0xea60

    .line 763
    .local v4, "soTimeout":I
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 764
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    .line 765
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 766
    const v6, 0xea60

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 768
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 770
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 772
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v3, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 776
    new-instance v6, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v6, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    .line 780
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v6, v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5

    .line 814
    .end local v1    # "params":Lorg/apache/http/params/HttpParams;
    .end local v2    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v4    # "soTimeout":I
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v6

    .line 782
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 788
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 794
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 796
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 800
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v0

    .line 802
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 806
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v0

    .line 808
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 812
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_5
    move-exception v0

    .line 814
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public declared-synchronized sendRequest(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/HttpResponse;
    .locals 10
    .param p1, "reqContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "director"    # Lorg/apache/http/client/RequestDirector;

    .prologue
    .line 234
    monitor-enter p0

    const/4 v5, 0x0

    .line 236
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 238
    .local v3, "finalResponse":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 240
    .local v1, "cipherSuiteName":Ljava/lang/String;
    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 242
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->requestDirector:Lorg/apache/http/client/RequestDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    .line 252
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "secondRequest"

    invoke-interface {v6, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "checkForSecondRequest":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {p2, v6, v7, p1}, Lorg/apache/http/client/RequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 255
    if-eqz v5, :cond_3

    .line 259
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "after response for naf request==="

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-eq v6, v7, :cond_0

    .line 265
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "401 not received from NAF, authorization complete"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    .line 332
    .end local v0    # "checkForSecondRequest":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 275
    .restart local v0    # "checkForSecondRequest":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "returning here==secondRequest response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "secondRequest"

    const-string v8, "false"

    invoke-interface {v6, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v5

    .line 279
    goto :goto_0

    .line 283
    :cond_1
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "response for first naf request==="

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 288
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "Https is used Extracting the Ciphersuite"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p2, p1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuite(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v1

    .line 294
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CipherSuite negotiated is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->setCipherSuite(Ljava/lang/String;)V

    .line 302
    :cond_2
    new-instance v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-direct {v4, p0, v6}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;-><init>(Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;Lorg/apache/http/HttpRequest;)V

    .line 304
    .local v4, "nafTransaction":Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->handleUnauthorizedRes(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    move-object v6, v3

    .line 307
    goto :goto_0

    .line 314
    .end local v4    # "nafTransaction":Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;
    :cond_3
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "Response is NULL"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "checkForSecondRequest":Ljava/lang/String;
    :goto_1
    move-object v6, v5

    .line 332
    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Lorg/apache/http/HttpException;
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/http/HttpException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 234
    .end local v2    # "e":Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 324
    :catch_1
    move-exception v2

    .line 328
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendSecondNafRequest()Lorg/apache/http/HttpResponse;
    .locals 8

    .prologue
    .line 648
    const/4 v2, 0x0

    .line 650
    .local v2, "response":Lorg/apache/http/HttpResponse;
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 656
    .local v1, "nafHttpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->registerClientConnection(Lorg/apache/http/client/HttpClient;)V

    .line 658
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "secondRequest"

    const-string v6, "true"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v4, v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 664
    if-eqz v2, :cond_1

    .line 668
    invoke-static {v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printResponse(Lorg/apache/http/HttpResponse;)V

    .line 670
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 674
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something went Wrong in Second NAF Request"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v3, v2

    .line 724
    .end local v1    # "nafHttpClient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v3

    .line 682
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "nafHttpClient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafRequest"

    const-string v6, "second naf response is 200"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    .end local v1    # "nafHttpClient":Lorg/apache/http/client/HttpClient;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move-object v3, v2

    .line 724
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1
.end method

.method public setNafAuthorizationHeaderVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 734
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    .line 736
    return-void
.end method
