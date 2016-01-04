.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# static fields
.field private static final CONN_TIMEOUT:I = 0x2710

.field private static IS_KEEP_ALIVE:Z = false

.field public static IS_RECONNECTION_TRIED:Z = false

.field private static final MAX_PROCESS:I = 0x4

.field private static final READ_CONF:Z

.field private static SMARTBONDING_ENABLED:Z

.field private static SMARTBONDING_ENABLED_INITIATED:Z

.field private static THRESHOLD_LENGTH:I

.field protected static bIsDataSubmited:Z

.field private static originalRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/impl/client/RoutedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultValuesSet:Z

.field private static sIsReadValuesFromFile:Z

.field static sProcessUsingMultiSocket:I


# instance fields
.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field private mConnectionTime:J

.field private mCustomHttpParams:Lorg/apache/http/params/HttpParams;

.field private mHttpHost:Lorg/apache/http/HttpHost;

.field private mHttpRequest:Lorg/apache/http/HttpRequest;

.field private mLocalAndRemoteAddr:I

.field private mRemoteAddress:Ljava/net/InetAddress;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field private final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final targetAuthState:Lorg/apache/http/auth/AuthState;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->sIsReadValuesFromFile:Z

    .line 184
    const/high16 v0, 0x500000

    sput v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->THRESHOLD_LENGTH:I

    .line 200
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->IS_KEEP_ALIVE:Z

    .line 203
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->sDefaultValuesSet:Z

    .line 209
    sput v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    .line 221
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->bIsDataSubmited:Z

    .line 230
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->IS_RECONNECTION_TRIED:Z

    .line 240
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED_INITIATED:Z

    .line 245
    sput-boolean v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpRequest:Lorg/apache/http/HttpRequest;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpHost:Lorg/apache/http/HttpHost;

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mConnectionTime:J

    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    if-nez p2, :cond_1

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client connection manager may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    if-nez p3, :cond_2

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    if-nez p4, :cond_3

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection keep alive strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3
    if-nez p5, :cond_4

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route planner may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_4
    if-nez p6, :cond_5

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP protocol processor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_5
    if-nez p7, :cond_6

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request retry handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_6
    if-nez p8, :cond_7

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Redirect handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_7
    if-nez p9, :cond_8

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_8
    if-nez p10, :cond_9

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_9
    if-nez p11, :cond_a

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User token handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_a
    if-nez p12, :cond_b

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_b
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 326
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 327
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 328
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 329
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 330
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 331
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 332
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 333
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 334
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 335
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 336
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 341
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 342
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 343
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    .line 467
    sget-boolean v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->sDefaultValuesSet:Z

    if-nez v0, :cond_c

    .line 468
    const-string v0, "Reading from variable values from setDefaultValuesToVariables"

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setDefaultValuesToVariables()V

    .line 470
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->sDefaultValuesSet:Z

    .line 473
    :cond_c
    return-void
.end method

.method private abortConnection()V
    .locals 5

    .prologue
    .line 2994
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 2995
    .local v2, "mcc":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v2, :cond_1

    .line 2998
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 3000
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3008
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3013
    :cond_1
    :goto_1
    return-void

    .line 3001
    :catch_0
    move-exception v0

    .line 3002
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3003
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3009
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 3010
    .local v1, "ignored":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Error releasing connection"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private copyAllHeaders(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 22
    .param p1, "origalRequest"    # Lorg/apache/http/HttpRequest;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 3273
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v11

    .line 3279
    .local v11, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 3280
    sget-boolean v19, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v19, :cond_0

    .line 3281
    const-string v19, "copyAllHeaders After changing the values of params "

    invoke-static/range {v19 .. v19}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3284
    :cond_0
    new-instance v10, Lorg/apache/http/conn/routing/HttpRoute;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    .line 3289
    .local v10, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v9, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v9, v11, v10}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 3291
    .local v9, "origRequest":Lorg/apache/http/impl/client/RoutedRequest;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v15

    .line 3292
    .local v15, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {v15}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v12

    .line 3296
    .local v12, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v14

    .line 3298
    .local v14, "request":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v17

    .line 3300
    .local v17, "uri":Ljava/net/URI;
    sget-boolean v19, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v19, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "host is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3301
    :cond_1
    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3304
    .local v7, "newTarget":Lorg/apache/http/HttpHost;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 3306
    .local v13, "redirect":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v14}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v8

    .line 3308
    .local v8, "orig":Lorg/apache/http/HttpRequest;
    invoke-interface {v8}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 3314
    .local v3, "allHeader":[Lorg/apache/http/Header;
    invoke-virtual {v13, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 3316
    new-instance v18, Lorg/apache/http/impl/client/RequestWrapper;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 3317
    .local v18, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    sget-boolean v19, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v19, :cond_2

    .line 3319
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v16

    .line 3320
    .local v16, "testHeaders1":[Lorg/apache/http/Header;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_2

    .line 3321
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Header["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]  Name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v4

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", value:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v4

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3320
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3324
    .end local v4    # "i":I
    .end local v16    # "testHeaders1":[Lorg/apache/http/Header;
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 3336
    new-instance v6, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v6, v7}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    .line 3337
    .local v6, "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v5, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v6}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 3348
    .local v5, "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    invoke-virtual {v5}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 3349
    invoke-virtual {v5}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 3361
    return-object v5
.end method

.method private executeOriginal(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 31
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    move-object/from16 v15, p2

    .line 1154
    .local v15, "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v17

    .line 1155
    .local v17, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v16

    .line 1158
    .local v16, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v22, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1160
    .local v22, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v24

    .line 1162
    .local v24, "timeout":J
    const/4 v11, 0x0

    .line 1164
    .local v11, "execCount":I
    const/16 v21, 0x0

    .line 1165
    .local v21, "reuse":Z
    const/16 v19, 0x0

    .line 1166
    .local v19, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 1168
    .local v5, "done":Z
    :cond_0
    :goto_0
    if-nez v5, :cond_8

    .line 1174
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v27

    .line 1175
    .local v27, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v23

    .line 1178
    .local v23, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const-string v28, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 1182
    .local v26, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v4

    .line 1185
    .local v4, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    instance-of v0, v15, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1186
    move-object v0, v15

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    :cond_1
    :try_start_1
    sget-object v28, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v24

    move-object/from16 v2, v28

    invoke-interface {v4, v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Stale connection check"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Stale connection detected"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1206
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1220
    .end local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_2
    :goto_1
    :try_start_4
    instance-of v0, v15, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 1221
    move-object v0, v15

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 1226
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v28

    if-nez v28, :cond_6

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1239
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_5
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1249
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 1252
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1255
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.virtual-host"

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object/from16 p1, v0

    .line 1258
    if-nez p1, :cond_4

    .line 1259
    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 1262
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v18

    .line 1265
    .local v18, "proxy":Lorg/apache/http/HttpHost;
    const-string v28, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1266
    const-string v28, "http.proxy_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1267
    const-string v28, "http.connection"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1269
    const-string v28, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1271
    const-string v28, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 1277
    const-string v28, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1279
    const/16 v20, 0x1

    .line 1280
    .local v20, "retrying":Z
    :goto_3
    if-eqz v20, :cond_12

    .line 1282
    add-int/lit8 v11, v11, 0x1

    .line 1284
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 1285
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_c

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v28

    if-nez v28, :cond_c

    .line 1286
    new-instance v28, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v29, "Cannot retry request with a non-repeatable request entity"

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1396
    .end local v18    # "proxy":Lorg/apache/http/HttpHost;
    .end local v20    # "retrying":Z
    .end local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "userToken":Ljava/lang/Object;
    .end local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v10

    .line 1397
    .local v10, "ex":Lorg/apache/http/HttpException;
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1398
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1406
    .end local v10    # "ex":Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v28

    sget-boolean v29, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    if-eqz v29, :cond_5

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->flushLogs()V

    :cond_5
    throw v28

    .line 1193
    .restart local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "userToken":Ljava/lang/Object;
    .restart local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1
    move-exception v13

    .line 1194
    .local v13, "interrupted":Ljava/lang/InterruptedException;
    :try_start_8
    new-instance v14, Ljava/io/InterruptedIOException;

    invoke-direct {v14}, Ljava/io/InterruptedIOException;-><init>()V

    .line 1195
    .local v14, "iox":Ljava/io/InterruptedIOException;
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1196
    throw v14
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1399
    .end local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v13    # "interrupted":Ljava/lang/InterruptedException;
    .end local v14    # "iox":Ljava/io/InterruptedIOException;
    .end local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "userToken":Ljava/lang/Object;
    .end local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_2
    move-exception v10

    .line 1400
    .local v10, "ex":Ljava/io/IOException;
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1401
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1233
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "userToken":Ljava/lang/Object;
    .restart local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_a
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1402
    .end local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "userToken":Ljava/lang/Object;
    .end local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_3
    move-exception v10

    .line 1403
    .local v10, "ex":Ljava/lang/RuntimeException;
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1404
    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1240
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    .restart local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "userToken":Ljava/lang/Object;
    .restart local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_4
    move-exception v10

    .line 1241
    .local v10, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1244
    :cond_7
    invoke-virtual {v10}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 1381
    .end local v10    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "userToken":Ljava/lang/Object;
    .end local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_8
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    if-eqz v28, :cond_9

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v28

    if-nez v28, :cond_19

    .line 1384
    :cond_9
    if-eqz v21, :cond_a

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 1386
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_c
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1406
    :goto_4
    sget-boolean v28, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    if-eqz v28, :cond_b

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->flushLogs()V

    :cond_b
    return-object v19

    .line 1292
    .restart local v18    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v20    # "retrying":Z
    .restart local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "userToken":Ljava/lang/Object;
    .restart local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Attempt "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " to execute request"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1296
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v19

    .line 1298
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1300
    :catch_5
    move-exception v10

    .line 1301
    .local v10, "ex":Ljava/io/IOException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Closing the connection."

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-interface {v0, v10, v11, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "I/O exception ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ") caught when processing request: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1310
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1313
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Retrying request"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1320
    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Reopening the direct connection."

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_3

    .line 1315
    :cond_10
    throw v10

    .line 1325
    :cond_11
    throw v10

    .line 1333
    .end local v10    # "ex":Ljava/io/IOException;
    :cond_12
    if-eqz v19, :cond_13

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1335
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v21

    .line 1339
    if-eqz v21, :cond_14

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v6

    .line 1343
    .local v6, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v6, v7, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 1347
    .end local v6    # "duration":J
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v12

    .line 1349
    .local v12, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v12, :cond_15

    .line 1350
    const/4 v5, 0x1

    .line 1373
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v26

    .line 1374
    const-string v28, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1352
    :cond_15
    if-eqz v21, :cond_18

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Connection kept alive"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1356
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 1357
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_16

    .line 1358
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1362
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 1367
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    :goto_6
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_17

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 1370
    :cond_17
    move-object/from16 v22, v12

    goto :goto_5

    .line 1364
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_6

    .line 1389
    .end local v12    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v18    # "proxy":Lorg/apache/http/HttpHost;
    .end local v20    # "retrying":Z
    .end local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "userToken":Ljava/lang/Object;
    .end local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_19
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 1390
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v9, Lorg/apache/http/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-direct {v9, v8, v0, v1}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 1391
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_e
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 1207
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v23    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "userToken":Ljava/lang/Object;
    .restart local v27    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_6
    move-exception v28

    goto/16 :goto_1
.end method

.method private executeSB(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 65
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_0

    .line 709
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 712
    :cond_0
    const/16 v20, 0x0

    .line 714
    .local v20, "origRRequest":Lorg/apache/http/impl/client/RoutedRequest;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v30

    .line 716
    .local v30, "currentThreadId":J
    sget-object v6, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    monitor-enter v6

    .line 718
    :try_start_0
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 720
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->copyAllHeaders(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v20

    .line 721
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 727
    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 729
    move-object/from16 v47, p2

    .line 730
    .local v47, "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v49

    .line 731
    .local v49, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 732
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v49

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v48

    .line 734
    .local v48, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v56, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 736
    .local v56, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v5}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v61

    .line 738
    .local v61, "timeout":J
    const/16 v38, 0x0

    .line 740
    .local v38, "execCount":I
    const/16 v55, 0x0

    .line 741
    .local v55, "reuse":Z
    const/16 v53, 0x0

    .line 742
    .local v53, "response":Lorg/apache/http/HttpResponse;
    const/16 v32, 0x0

    .line 743
    .local v32, "done":Z
    const/16 v60, 0x0

    .line 744
    .local v60, "statusCode":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    .line 747
    .local v58, "startSocketCreation":J
    :goto_1
    if-nez v32, :cond_9

    .line 753
    :try_start_2
    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v64

    .line 754
    .local v64, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v57

    .line 757
    .local v57, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const-string v5, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v63

    .line 761
    .local v63, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v5, :cond_3

    .line 762
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v0, v57

    move-object/from16 v1, v63

    invoke-interface {v5, v0, v1}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v28

    .line 764
    .local v28, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 v0, v47

    instance-of v5, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v5, :cond_2

    .line 765
    move-object/from16 v0, v47

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object v5, v0

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    :cond_2
    :try_start_3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide/from16 v1, v61

    invoke-interface {v0, v1, v2, v5}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 778
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v5}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Stale connection check"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Stale connection detected"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 785
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 799
    .end local v28    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_3
    :goto_2
    :try_start_6
    move-object/from16 v0, v47

    instance-of v5, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v5, :cond_4

    .line 800
    move-object/from16 v0, v47

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5, v6}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 805
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v5

    if-nez v5, :cond_7

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 819
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_7
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 829
    :try_start_8
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 832
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 835
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.virtual-host"

    invoke-interface {v5, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object/from16 p1, v0

    .line 838
    if-nez p1, :cond_5

    .line 839
    invoke-virtual/range {v57 .. v57}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 842
    :cond_5
    invoke-virtual/range {v57 .. v57}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v24

    .line 845
    .local v24, "proxy":Lorg/apache/http/HttpHost;
    const-string v5, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    const-string v5, "http.proxy_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 847
    const-string v5, "http.connection"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    const-string v5, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    const-string v5, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v6, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 857
    const-string v5, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-interface {v0, v5, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    const/16 v54, 0x1

    .line 860
    .local v54, "retrying":Z
    :goto_4
    if-eqz v54, :cond_2f

    .line 862
    add-int/lit8 v38, v38, 0x1

    .line 865
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 866
    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_d

    invoke-virtual/range {v64 .. v64}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v5

    if-nez v5, :cond_d

    .line 867
    new-instance v5, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v6, "Cannot retry request with a non-repeatable request entity"

    invoke-direct {v5, v6}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1115
    .end local v24    # "proxy":Lorg/apache/http/HttpHost;
    .end local v54    # "retrying":Z
    .end local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v63    # "userToken":Ljava/lang/Object;
    .end local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v37

    .line 1116
    .local v37, "ex":Lorg/apache/http/HttpException;
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1117
    throw v37
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1125
    .end local v37    # "ex":Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v5

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->flushLogs()V

    throw v5

    .line 723
    .end local v32    # "done":Z
    .end local v38    # "execCount":I
    .end local v47    # "orig":Lorg/apache/http/HttpRequest;
    .end local v48    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v49    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v53    # "response":Lorg/apache/http/HttpResponse;
    .end local v55    # "reuse":Z
    .end local v56    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v58    # "startSocketCreation":J
    .end local v60    # "statusCode":I
    .end local v61    # "timeout":J
    :cond_6
    :try_start_a
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v20, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 727
    :catchall_1
    move-exception v5

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v5

    .line 772
    .restart local v28    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v32    # "done":Z
    .restart local v38    # "execCount":I
    .restart local v47    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v48    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v49    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v53    # "response":Lorg/apache/http/HttpResponse;
    .restart local v55    # "reuse":Z
    .restart local v56    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v58    # "startSocketCreation":J
    .restart local v60    # "statusCode":I
    .restart local v61    # "timeout":J
    .restart local v63    # "userToken":Ljava/lang/Object;
    .restart local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1
    move-exception v42

    .line 773
    .local v42, "interrupted":Ljava/lang/InterruptedException;
    :try_start_c
    new-instance v43, Ljava/io/InterruptedIOException;

    invoke-direct/range {v43 .. v43}, Ljava/io/InterruptedIOException;-><init>()V

    .line 774
    .local v43, "iox":Ljava/io/InterruptedIOException;
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 775
    throw v43
    :try_end_c
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1118
    .end local v28    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v42    # "interrupted":Ljava/lang/InterruptedException;
    .end local v43    # "iox":Ljava/io/InterruptedIOException;
    .end local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v63    # "userToken":Ljava/lang/Object;
    .end local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_2
    move-exception v37

    .line 1119
    .local v37, "ex":Ljava/io/IOException;
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1120
    throw v37
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 813
    .end local v37    # "ex":Ljava/io/IOException;
    .restart local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v63    # "userToken":Ljava/lang/Object;
    .restart local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_7
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v6

    invoke-interface {v5, v6}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_e
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 1121
    .end local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v63    # "userToken":Ljava/lang/Object;
    .end local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_3
    move-exception v37

    .line 1122
    .local v37, "ex":Ljava/lang/RuntimeException;
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1123
    throw v37
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 820
    .end local v37    # "ex":Ljava/lang/RuntimeException;
    .restart local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v63    # "userToken":Ljava/lang/Object;
    .restart local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_4
    move-exception v37

    .line 821
    .local v37, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 822
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 824
    :cond_8
    invoke-virtual/range {v37 .. v37}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v53

    .line 1099
    .end local v37    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v63    # "userToken":Ljava/lang/Object;
    .end local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_9
    if-eqz v53, :cond_a

    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v5

    if-nez v5, :cond_37

    .line 1102
    :cond_a
    if-eqz v55, :cond_b

    .line 1103
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 1104
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_10
    .catch Lorg/apache/http/HttpException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1125
    :cond_c
    :goto_5
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->flushLogs()V

    return-object v53

    .line 872
    .restart local v24    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v54    # "retrying":Z
    .restart local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v63    # "userToken":Ljava/lang/Object;
    .restart local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_d
    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 873
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to execute request"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 875
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v6, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v53

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 878
    .local v14, "maimResponseTime":J
    sub-long v22, v14, v58

    .line 880
    .local v22, "connectionTime":J
    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v40

    check-cast v40, Lorg/apache/http/entity/BasicHttpEntity;

    .line 882
    .local v40, "httpEntity":Lorg/apache/http/entity/BasicHttpEntity;
    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v60

    .line 883
    if-eqz v40, :cond_1d

    const/16 v5, 0xc8

    move/from16 v0, v60

    if-eq v0, v5, :cond_f

    const/16 v5, 0xce

    move/from16 v0, v60

    if-ne v0, v5, :cond_1d

    :cond_f
    invoke-virtual/range {v40 .. v40}, Lorg/apache/http/entity/BasicHttpEntity;->getContentLength()J

    move-result-wide v5

    sget v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->THRESHOLD_LENGTH:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1d

    .line 885
    new-instance v50, Lorg/apache/http/ProtocolVersion;

    const-string v5, "HTTP"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v50

    invoke-direct {v0, v5, v6, v7}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 887
    .local v50, "protocolVer":Lorg/apache/http/ProtocolVersion;
    const-string v5, "Connection"

    move-object/from16 v0, v53

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v29

    .line 888
    .local v29, "connectionCloseHeader":Lorg/apache/http/Header;
    if-nez v29, :cond_1e

    const/4 v12, 0x0

    .line 890
    .local v12, "isConnectionClose":Z
    :goto_6
    const-string v5, "Accept-Ranges"

    move-object/from16 v0, v53

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v51

    .line 891
    .local v51, "rangeRequestSupport":Lorg/apache/http/Header;
    if-nez v51, :cond_1f

    const/16 v45, 0x1

    .line 893
    .local v45, "isRangeRequestSupported":Z
    :goto_7
    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->isRangeRequestProper(Lorg/apache/http/HttpRequest;)I

    move-result v13

    .line 895
    .local v13, "offset":I
    const-wide/16 v17, 0x0

    .line 896
    .local v17, "contentLengthRangeRequest":J
    if-ltz v13, :cond_10

    .line 897
    const-string v5, "Content-Range"

    move-object/from16 v0, v53

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v52

    .line 898
    .local v52, "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    if-eqz v52, :cond_22

    .line 899
    invoke-interface/range {v52 .. v52}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 900
    .local v27, "byteRange":Ljava/lang/String;
    const-string v5, "/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    .line 902
    .local v41, "indexOfSlash":I
    const/4 v5, -0x1

    move/from16 v0, v41

    if-eq v0, v5, :cond_21

    .line 904
    add-int/lit8 v5, v41, 0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 922
    .end local v27    # "byteRange":Ljava/lang/String;
    .end local v41    # "indexOfSlash":I
    .end local v52    # "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    :cond_10
    :goto_8
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_11

    .line 923
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Lorg/apache/http/entity/BasicHttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 927
    :cond_11
    const/16 v25, 0x0

    .line 928
    .local v25, "bExceedMaxProcess":Z
    monitor-enter p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 929
    :try_start_12
    sget v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_12

    .line 930
    const/16 v25, 0x1

    .line 932
    :cond_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 934
    :try_start_13
    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v21

    .line 937
    .local v21, "finalReaquest":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 939
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getNBEnabled()Z

    move-result v26

    .line 940
    .local v26, "bNBEnabled":Z
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download Booster Enabled Status in Setting is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 942
    :cond_13
    if-nez v25, :cond_29

    move-object/from16 v0, p2

    instance-of v5, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v5, :cond_29

    if-eqz v24, :cond_14

    sget-object v5, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->isTargetAddressProper(Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_29

    :cond_15
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz v45, :cond_29

    if-ltz v13, :cond_29

    if-eqz v26, :cond_29

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v46

    .line 954
    .local v46, "local":Ljava/net/InetAddress;
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_16

    .line 955
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current main socket id addr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 957
    :cond_16
    const/16 v19, 0x0

    .line 958
    .local v19, "mainSocketId":I
    const/16 v44, 0x0

    .line 959
    .local v44, "ipVer":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_17

    .line 960
    const/16 v44, 0x1

    .line 962
    :cond_17
    if-eqz v46, :cond_18

    invoke-virtual/range {v46 .. v46}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_18

    const/4 v5, 0x0

    move/from16 v0, v44

    invoke-static {v5, v0}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 963
    :cond_18
    const/16 v19, 0x0

    .line 967
    :goto_9
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "main socket id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 969
    :cond_19
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1a

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main Socket Remote InetAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Port Address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Local Interface id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 976
    :cond_1a
    new-instance v4, Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual/range {v40 .. v40}, Lorg/apache/http/entity/BasicHttpEntity;->getContentLength()J

    move-result-wide v5

    invoke-virtual/range {v40 .. v40}, Lorg/apache/http/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v16, p0

    invoke-direct/range {v4 .. v24}, Lorg/apache/http/impl/client/MultiSocketInputStream;-><init>(JLjava/io/InputStream;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/conn/ManagedClientConnection;ZIJLorg/apache/http/impl/client/DefaultRequestDirector;JILorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpRequest;JLorg/apache/http/HttpHost;)V

    .line 983
    .local v4, "multiInputStream":Ljava/io/InputStream;
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1b

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time taken to return from MultiInputStream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While creating instance of MultiSocketInputStream done  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 988
    :cond_1b
    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 990
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1c

    .line 991
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing the original request after starting MultisocketInputStream for thread id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 993
    :cond_1c
    sget-object v6, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 994
    :try_start_14
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1006
    .end local v4    # "multiInputStream":Ljava/io/InputStream;
    .end local v12    # "isConnectionClose":Z
    .end local v13    # "offset":I
    .end local v17    # "contentLengthRangeRequest":J
    .end local v19    # "mainSocketId":I
    .end local v21    # "finalReaquest":Lorg/apache/http/HttpRequest;
    .end local v25    # "bExceedMaxProcess":Z
    .end local v26    # "bNBEnabled":Z
    .end local v29    # "connectionCloseHeader":Lorg/apache/http/Header;
    .end local v44    # "ipVer":I
    .end local v45    # "isRangeRequestSupported":Z
    .end local v46    # "local":Ljava/net/InetAddress;
    .end local v50    # "protocolVer":Lorg/apache/http/ProtocolVersion;
    .end local v51    # "rangeRequestSupport":Lorg/apache/http/Header;
    :cond_1d
    :goto_a
    const/16 v54, 0x0

    goto/16 :goto_4

    .line 888
    .restart local v29    # "connectionCloseHeader":Lorg/apache/http/Header;
    .restart local v50    # "protocolVer":Lorg/apache/http/ProtocolVersion;
    :cond_1e
    :try_start_15
    invoke-interface/range {v29 .. v29}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Close"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_6

    .line 891
    .restart local v12    # "isConnectionClose":Z
    .restart local v51    # "rangeRequestSupport":Lorg/apache/http/Header;
    :cond_1f
    invoke-interface/range {v51 .. v51}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    const/16 v45, 0x1

    goto/16 :goto_7

    :cond_20
    const/16 v45, 0x0

    goto/16 :goto_7

    .line 911
    .restart local v13    # "offset":I
    .restart local v17    # "contentLengthRangeRequest":J
    .restart local v27    # "byteRange":Ljava/lang/String;
    .restart local v41    # "indexOfSlash":I
    .restart local v45    # "isRangeRequestSupported":Z
    .restart local v52    # "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    :cond_21
    invoke-virtual/range {v40 .. v40}, Lorg/apache/http/entity/BasicHttpEntity;->getContentLength()J

    move-result-wide v5

    int-to-long v7, v13

    add-long v17, v5, v7

    goto/16 :goto_8

    .line 917
    .end local v27    # "byteRange":Ljava/lang/String;
    .end local v41    # "indexOfSlash":I
    :cond_22
    invoke-virtual/range {v40 .. v40}, Lorg/apache/http/entity/BasicHttpEntity;->getContentLength()J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-wide v17

    goto/16 :goto_8

    .line 932
    .end local v52    # "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    .restart local v25    # "bExceedMaxProcess":Z
    :catchall_2
    move-exception v5

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    throw v5
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1007
    .end local v12    # "isConnectionClose":Z
    .end local v13    # "offset":I
    .end local v14    # "maimResponseTime":J
    .end local v17    # "contentLengthRangeRequest":J
    .end local v22    # "connectionTime":J
    .end local v25    # "bExceedMaxProcess":Z
    .end local v29    # "connectionCloseHeader":Lorg/apache/http/Header;
    .end local v40    # "httpEntity":Lorg/apache/http/entity/BasicHttpEntity;
    .end local v45    # "isRangeRequestSupported":Z
    .end local v50    # "protocolVer":Lorg/apache/http/ProtocolVersion;
    .end local v51    # "rangeRequestSupport":Lorg/apache/http/Header;
    :catch_5
    move-exception v37

    .line 1008
    .local v37, "ex":Ljava/io/IOException;
    :try_start_18
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_23

    .line 1009
    const-string v5, "Exception while connecting "

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1010
    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1012
    :cond_23
    const/16 v5, 0x12e

    move/from16 v0, v60

    if-eq v0, v5, :cond_24

    .line 1014
    sget-object v6, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_18
    .catch Lorg/apache/http/HttpException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1015
    :try_start_19
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 1018
    :cond_24
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Closing the connection."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 1020
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, p3

    invoke-interface {v5, v0, v1, v2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1021
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1022
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") caught when processing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1025
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1026
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1028
    :cond_26
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_27

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1043
    :cond_27
    invoke-virtual/range {v57 .. v57}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d

    .line 1044
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_1a
    .catch Lorg/apache/http/HttpException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_4

    .line 965
    .end local v37    # "ex":Ljava/io/IOException;
    .restart local v12    # "isConnectionClose":Z
    .restart local v13    # "offset":I
    .restart local v14    # "maimResponseTime":J
    .restart local v17    # "contentLengthRangeRequest":J
    .restart local v19    # "mainSocketId":I
    .restart local v21    # "finalReaquest":Lorg/apache/http/HttpRequest;
    .restart local v22    # "connectionTime":J
    .restart local v25    # "bExceedMaxProcess":Z
    .restart local v26    # "bNBEnabled":Z
    .restart local v29    # "connectionCloseHeader":Lorg/apache/http/Header;
    .restart local v40    # "httpEntity":Lorg/apache/http/entity/BasicHttpEntity;
    .restart local v44    # "ipVer":I
    .restart local v45    # "isRangeRequestSupported":Z
    .restart local v46    # "local":Ljava/net/InetAddress;
    .restart local v50    # "protocolVer":Lorg/apache/http/ProtocolVersion;
    .restart local v51    # "rangeRequestSupport":Lorg/apache/http/Header;
    :cond_28
    const/16 v19, 0x1

    goto/16 :goto_9

    .line 995
    .restart local v4    # "multiInputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v5

    :try_start_1b
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v5

    .line 996
    .end local v4    # "multiInputStream":Ljava/io/InputStream;
    .end local v19    # "mainSocketId":I
    .end local v44    # "ipVer":I
    .end local v46    # "local":Ljava/net/InetAddress;
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 998
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_2a

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing the original request for thread id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1001
    :cond_2a
    sget-object v6, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1002
    :try_start_1d
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->originalRequest:Ljava/util/HashMap;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    monitor-exit v6

    goto/16 :goto_a

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    throw v5
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1016
    .end local v12    # "isConnectionClose":Z
    .end local v13    # "offset":I
    .end local v14    # "maimResponseTime":J
    .end local v17    # "contentLengthRangeRequest":J
    .end local v21    # "finalReaquest":Lorg/apache/http/HttpRequest;
    .end local v22    # "connectionTime":J
    .end local v25    # "bExceedMaxProcess":Z
    .end local v26    # "bNBEnabled":Z
    .end local v29    # "connectionCloseHeader":Lorg/apache/http/Header;
    .end local v40    # "httpEntity":Lorg/apache/http/entity/BasicHttpEntity;
    .end local v45    # "isRangeRequestSupported":Z
    .end local v50    # "protocolVer":Lorg/apache/http/ProtocolVersion;
    .end local v51    # "rangeRequestSupport":Lorg/apache/http/Header;
    .restart local v37    # "ex":Ljava/io/IOException;
    :catchall_5
    move-exception v5

    :try_start_1f
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    throw v5

    .line 1032
    :cond_2b
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_2c

    .line 1033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Retrying request any more "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1036
    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1038
    :cond_2c
    throw v37

    .line 1047
    :cond_2d
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Still throw the exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1048
    :cond_2e
    throw v37

    .line 1054
    .end local v37    # "ex":Ljava/io/IOException;
    :cond_2f
    if-eqz v53, :cond_30

    .line 1055
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v53

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1056
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v6, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v55

    .line 1060
    if-eqz v55, :cond_31

    .line 1062
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v33

    .line 1063
    .local v33, "duration":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v33

    invoke-interface {v5, v0, v1, v6}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 1066
    .end local v33    # "duration":J
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v53

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v39

    .line 1067
    .local v39, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v39, :cond_33

    .line 1068
    const/16 v32, 0x1

    .line 1090
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v63

    .line 1091
    const-string v5, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-interface {v0, v5, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v5, :cond_32

    .line 1093
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, v63

    invoke-interface {v5, v0}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    .line 1095
    :cond_32
    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpRequest:Lorg/apache/http/HttpRequest;

    .line 1096
    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpHost:Lorg/apache/http/HttpHost;

    goto/16 :goto_1

    .line 1070
    :cond_33
    if-eqz v55, :cond_36

    .line 1071
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Connection kept alive"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1073
    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v35

    .line 1074
    .local v35, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v35, :cond_34

    .line 1075
    invoke-interface/range {v35 .. v35}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1079
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 1084
    .end local v35    # "entity":Lorg/apache/http/HttpEntity;
    :goto_c
    invoke-virtual/range {v39 .. v39}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual/range {v56 .. v56}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 1087
    :cond_35
    move-object/from16 v56, v39

    goto :goto_b

    .line 1081
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_c

    .line 1107
    .end local v24    # "proxy":Lorg/apache/http/HttpHost;
    .end local v39    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v54    # "retrying":Z
    .end local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v63    # "userToken":Ljava/lang/Object;
    .end local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_37
    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v35

    .line 1108
    .restart local v35    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v36, Lorg/apache/http/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move/from16 v2, v55

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 1109
    .end local v35    # "entity":Lorg/apache/http/HttpEntity;
    .local v36, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v53

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1110
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_c

    .line 1111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The response length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/apache/http/HttpException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_5

    .line 786
    .end local v36    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v28    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v63    # "userToken":Ljava/lang/Object;
    .restart local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_6
    move-exception v5

    goto/16 :goto_2

    .line 726
    .end local v28    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v32    # "done":Z
    .end local v38    # "execCount":I
    .end local v47    # "orig":Lorg/apache/http/HttpRequest;
    .end local v48    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v49    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v53    # "response":Lorg/apache/http/HttpResponse;
    .end local v55    # "reuse":Z
    .end local v56    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v57    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v58    # "startSocketCreation":J
    .end local v60    # "statusCode":I
    .end local v61    # "timeout":J
    .end local v63    # "userToken":Ljava/lang/Object;
    .end local v64    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_7
    move-exception v5

    goto/16 :goto_0
.end method

.method public static getSBEnabled()Z
    .locals 1

    .prologue
    .line 683
    sget-boolean v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    return v0
.end method

.method private processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p2, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p3, "authHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p4, "response"    # Lorg/apache/http/HttpResponse;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/auth/AuthState;",
            "Lorg/apache/http/client/AuthenticationHandler;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 3024
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 3025
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-nez v0, :cond_0

    .line 3027
    invoke-interface {p3, p1, p4, p5}, Lorg/apache/http/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 3028
    invoke-virtual {p2, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 3030
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    .line 3032
    .local v2, "id":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 3033
    .local v1, "challenge":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    .line 3034
    new-instance v3, Lorg/apache/http/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " authorization challenge expected, but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3037
    :cond_1
    invoke-interface {v0, v1}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 3038
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Authorization challenge processed"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3039
    return-void
.end method

.method private setDefaultValuesToVariables()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v1, 0x3e8

    const/high16 v2, 0x100000

    .line 482
    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_MULTIRAT_BLOCK_SIZE:I

    .line 484
    const/high16 v0, 0x200000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_MULTIRAT_BLOCK_SIZE:I

    .line 486
    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET:I

    .line 488
    const/16 v0, 0x14

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MULTIRAT_BLOCK_DIV:I

    .line 490
    sput v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->MULTIRAT_BLOCK_DIV_CON_CLOSED:I

    .line 492
    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET_CON_CLOSE:I

    .line 494
    const/high16 v0, 0x500000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_MULTIRAT_BLOCK_SIZE_CON_CLOSED:I

    .line 496
    const v0, 0x8000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    .line 498
    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    .line 500
    const/high16 v0, 0x80000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->EXPECTSIZE:I

    .line 502
    const/16 v0, 0x7530

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    .line 504
    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    .line 506
    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    .line 508
    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    .line 510
    const/high16 v0, 0x200000

    sput v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->THRESHOLD_LENGTH:I

    .line 512
    sput v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    .line 516
    sput v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->DEFAULT_INTERFACE_FOR_INITIAL_CHUNK:I

    .line 518
    sput-boolean v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->IS_KEEP_ALIVE:Z

    .line 520
    const v0, 0x8000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MINSIZEFORSPEED:I

    .line 522
    const-wide/16 v0, 0x5

    sput-wide v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MINTIMEFORSPEED:J

    .line 524
    const-wide/16 v0, 0x1e

    sput-wide v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAXTIMEFORSPEED:J

    .line 526
    const/high16 v0, 0x40000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_BLOCKSIZE_TO_HANDOVER:I

    .line 528
    sput-boolean v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_CALC:Z

    .line 530
    const/high16 v0, 0x20000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_DATA_READ_SPEED_CALC:I

    .line 532
    sput v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_JUMP_STEP:I

    .line 534
    const/high16 v0, 0x500000

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_DOWNLOADED_DATA_FOR_SPEED_CALC:I

    .line 536
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAXMAXTIMEFORSPEED:J

    .line 538
    sput v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_LAST_CHUNK_SIZE_FOR_MERGE:I

    .line 540
    sput-boolean v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->ENABLE_EXTREME_CONDITION_THREAD:Z

    .line 542
    const-wide/16 v0, 0x1388

    sput-wide v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_READ_TIME_OUT:J

    .line 544
    const/4 v0, 0x5

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->EXTREME_TIME_RATIO:I

    .line 546
    const/16 v0, 0xfa0

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->THRESHOLD_SPEED:I

    .line 548
    const/16 v0, 0x1f40

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->TIMEOUT_WRITE_COMMON_BUFFER:I

    .line 550
    const/4 v0, 0x5

    sput v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_RATIO_MAKE_STOPPED:I

    .line 552
    sput v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_EXCEPTION_COUNT:I

    .line 553
    sput-boolean v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->IS_RECONNECTION_TRIED:Z

    .line 554
    return-void
.end method

.method private updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 9
    .param p1, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .prologue
    .line 3047
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3086
    :goto_0
    return-void

    .line 3051
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 3052
    .local v3, "hostname":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    .line 3053
    .local v4, "port":I
    if-gez v4, :cond_1

    .line 3054
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    .line 3055
    .local v5, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v4

    .line 3058
    .end local v5    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 3059
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    new-instance v1, Lorg/apache/http/auth/AuthScope;

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v4, v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3065
    .local v1, "authScope":Lorg/apache/http/auth/AuthScope;
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3066
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authentication scope: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3068
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 3069
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_5

    .line 3070
    invoke-interface {p3, v1}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 3071
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3072
    if-eqz v2, :cond_4

    .line 3073
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Found credentials"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3084
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 3085
    invoke-virtual {p1, v2}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    goto :goto_0

    .line 3075
    :cond_4
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Credentials not found"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 3079
    :cond_5
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3080
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Authentication failed"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3081
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 559
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 563
    :goto_0
    return-object v0

    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    goto :goto_0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .locals 10
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 2823
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 2825
    .local v6, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 2826
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    .line 2827
    .local v3, "port":I
    if-gez v3, :cond_0

    .line 2828
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    .line 2830
    .local v5, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v3

    .line 2833
    .end local v5    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2834
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2836
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2841
    .local v0, "authority":Ljava/lang/String;
    iget v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    if-eqz v8, :cond_1

    .line 2842
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v8}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .line 2847
    .local v7, "ver":Lorg/apache/http/ProtocolVersion;
    :goto_0
    new-instance v4, Lorg/apache/http/message/BasicHttpRequest;

    const-string v8, "CONNECT"

    invoke-direct {v4, v8, v0, v7}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 2850
    .local v4, "req":Lorg/apache/http/HttpRequest;
    return-object v4

    .line 2844
    .end local v4    # "req":Lorg/apache/http/HttpRequest;
    .end local v7    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_1
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v8}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .restart local v7    # "ver":Lorg/apache/http/ProtocolVersion;
    goto :goto_0
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 21
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2634
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v18

    .line 2635
    .local v18, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v20

    .line 2636
    .local v20, "target":Lorg/apache/http/HttpHost;
    const/4 v6, 0x0

    .line 2638
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v14, 0x0

    .line 2639
    .local v14, "done":Z
    :cond_0
    :goto_0
    if-nez v14, :cond_b

    .line 2641
    const/4 v14, 0x1

    .line 2643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2645
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v4, v5}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    .line 2656
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v11

    .line 2658
    .local v11, "connect":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    if-eqz v2, :cond_7

    .line 2659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v8

    .line 2664
    .local v8, "agent":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_2

    .line 2665
    const-string v2, "User-Agent"

    invoke-interface {v11, v2, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    :cond_2
    const-string v2, "Host"

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v9

    .line 2670
    .local v9, "authScheme":Lorg/apache/http/auth/AuthScheme;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v10

    .line 2671
    .local v10, "authScope":Lorg/apache/http/auth/AuthScope;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v12

    .line 2672
    .local v12, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v12, :cond_4

    .line 2673
    if-nez v10, :cond_3

    invoke-interface {v9}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2675
    :cond_3
    :try_start_0
    invoke-interface {v9, v12, v11}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2684
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v4, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 2686
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 2687
    .local v19, "status":I
    const/16 v2, 0xc8

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    .line 2688
    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response to CONNECT request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2647
    .end local v8    # "agent":Ljava/lang/String;
    .end local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v19    # "status":I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 2648
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_1

    .line 2650
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_1

    .line 2661
    .restart local v11    # "connect":Lorg/apache/http/HttpRequest;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "agent":Ljava/lang/String;
    goto/16 :goto_2

    .line 2676
    .restart local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .restart local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .restart local v12    # "creds":Lorg/apache/http/auth/Credentials;
    :catch_0
    move-exception v16

    .line 2677
    .local v16, "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy authentication error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2692
    .end local v16    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .restart local v19    # "status":I
    :cond_8
    const-string v2, "http.auth.credentials-provider"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/client/CredentialsProvider;

    .line 2697
    .local v13, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    if-eqz v2, :cond_a

    .line 2698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v17

    .line 2702
    .local v17, "isAuth":Z
    :goto_4
    if-eqz v13, :cond_0

    if-eqz v17, :cond_0

    .line 2704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v0, p2

    invoke-interface {v2, v6, v0}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2706
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy requested authentication"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v0, p2

    invoke-interface {v2, v6, v0}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v3

    .line 2710
    .local v3, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2719
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1, v13}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2722
    const/4 v14, 0x0

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v0, p2

    invoke-interface {v2, v6, v0}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Connection kept alive"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2728
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 2729
    .local v15, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_0

    .line 2730
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_0

    .line 2700
    .end local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v17    # "isAuth":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v17

    .restart local v17    # "isAuth":Z
    goto :goto_4

    .line 2713
    .restart local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :catch_1
    move-exception v16

    .line 2714
    .restart local v16    # "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 2745
    .end local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v8    # "agent":Ljava/lang/String;
    .end local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v13    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v16    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .end local v17    # "isAuth":Z
    .end local v19    # "status":I
    :cond_b
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 2747
    .restart local v19    # "status":I
    const/16 v2, 0x12b

    move/from16 v0, v19

    if-le v0, v2, :cond_f

    .line 2750
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 2751
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_c

    .line 2752
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v15}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v6, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2755
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 2756
    new-instance v2, Lorg/apache/http/impl/client/TunnelRefusedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECT refused by proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v6}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v2

    .line 2733
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .restart local v8    # "agent":Ljava/lang/String;
    .restart local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .restart local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .restart local v11    # "connect":Lorg/apache/http/HttpRequest;
    .restart local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v13    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v17    # "isAuth":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto/16 :goto_0

    .line 2740
    .end local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    goto/16 :goto_0

    .line 2760
    .end local v8    # "agent":Ljava/lang/String;
    .end local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v13    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v17    # "isAuth":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 2766
    const/4 v2, 0x0

    return v2
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 2473
    if-nez p1, :cond_0

    .line 2474
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.default-host"

    invoke-interface {v4, v5}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "target":Lorg/apache/http/HttpHost;
    check-cast p1, Lorg/apache/http/HttpHost;

    .line 2477
    .restart local p1    # "target":Lorg/apache/http/HttpHost;
    :cond_0
    if-nez p1, :cond_2

    .line 2480
    const/4 v2, 0x0

    .line 2481
    .local v2, "scheme":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2482
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2484
    .local v1, "path":Ljava/lang/String;
    instance-of v4, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_1

    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    .local v3, "uri":Ljava/net/URI;
    if-eqz v3, :cond_1

    .line 2486
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2487
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2488
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2490
    .end local v3    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target host must not be null, or set in parameters. scheme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2495
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "scheme":Ljava/lang/String;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    :cond_2
    sget-boolean v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "determineRoute Local address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.local-address"

    invoke-interface {v5, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2498
    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v4, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    return-object v4
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2523
    new-instance v2, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v2}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 2526
    .local v2, "rowdy":Lorg/apache/http/conn/routing/HttpRouteDirector;
    :cond_0
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 2528
    .local v0, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2529
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "establish route : fact route -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2532
    :cond_1
    invoke-interface {v2, p1, v0}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v4

    .line 2534
    .local v4, "step":I
    packed-switch v4, :pswitch_data_0

    .line 2602
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown step indicator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from RouteDirector."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2539
    :pswitch_0
    iget v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 2540
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-interface {v5, p1, p2, v6, v7}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    .line 2606
    :goto_0
    :pswitch_1
    if-gtz v4, :cond_0

    .line 2608
    return-void

    .line 2541
    :cond_2
    iget v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2542
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, p1, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2544
    :cond_3
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, p1, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2550
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 2551
    .local v3, "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to target created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2553
    iget v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    if-eqz v5, :cond_4

    .line 2554
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v3, v6}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2556
    :cond_4
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v3, v6}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2566
    .end local v3    # "secure":Z
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 2567
    .local v1, "hop":I
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 2568
    .restart local v3    # "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to proxy created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2570
    iget v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    if-eqz v5, :cond_5

    .line 2571
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v3, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2574
    :cond_5
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v3, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2583
    .end local v1    # "hop":I
    .end local v3    # "secure":Z
    :pswitch_4
    iget v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    if-eqz v5, :cond_6

    .line 2584
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2586
    :cond_6
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 2592
    :pswitch_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to establish route.\nplanned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\ncurrent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2534
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 10
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 621
    sget-boolean v8, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED_INITIATED:Z

    if-nez v8, :cond_1

    .line 623
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getSBSercie()Z

    move-result v8

    sput-boolean v8, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    .line 624
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->isShipBuild()Z

    move-result v3

    .line 625
    .local v3, "isSP":Z
    const/4 v8, 0x0

    sput-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    .line 626
    const/4 v8, 0x0

    sput-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    .line 627
    sget-boolean v8, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    if-eqz v8, :cond_0

    .line 628
    if-eqz v3, :cond_7

    .line 629
    const/4 v8, 0x0

    sput-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    .line 630
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getHttpLogEnabled()Z

    move-result v8

    sput-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    .line 637
    :cond_0
    :goto_0
    const/4 v8, 0x1

    sput-boolean v8, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED_INITIATED:Z

    .line 638
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartBonding Enabling is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SHIP_BUILD is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", log to file is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", DBG is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v3    # "isSP":Z
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 644
    .local v0, "bUseSB":Z
    sget-boolean v8, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    if-eqz v8, :cond_5

    .line 646
    :try_start_1
    sget-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v8, :cond_2

    .line 647
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSBService() is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getSBSercie()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 648
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMARTBONDING_ENABLED is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 649
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resquest instance of HttpUriRequest : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    instance-of v9, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "target.getSchemeName() is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 652
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    instance-of v8, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v8, :cond_8

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    .line 655
    :goto_2
    if-eqz v0, :cond_5

    .line 656
    const-string v5, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

    .line 657
    .local v5, "wifiOnlyKey":Ljava/lang/String;
    const-string v6, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

    invoke-interface {p2, v6}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 658
    .local v2, "hWiFiOnly":Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    .line 659
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, "sWiFiOnly":Ljava/lang/String;
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE is set to be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 661
    :cond_3
    if-eqz v4, :cond_4

    const-string v6, "TRUE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 662
    const/4 v0, 0x0

    .line 664
    :cond_4
    const-string v6, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

    invoke-interface {p2, v6}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 673
    .end local v2    # "hWiFiOnly":Lorg/apache/http/Header;
    .end local v4    # "sWiFiOnly":Ljava/lang/String;
    .end local v5    # "wifiOnlyKey":Ljava/lang/String;
    :cond_5
    :goto_3
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use SB for this session : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 674
    :cond_6
    if-eqz v0, :cond_9

    .line 675
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->executeSB(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 677
    :goto_4
    return-object v6

    .line 633
    .end local v0    # "bUseSB":Z
    .restart local v3    # "isSP":Z
    :cond_7
    :try_start_2
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getHttpLogEnabled()Z

    move-result v8

    sput-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    .line 634
    const/4 v8, 0x1

    sput-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 640
    .end local v3    # "isSP":Z
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .restart local v0    # "bUseSB":Z
    :cond_8
    move v0, v7

    .line 652
    goto :goto_2

    .line 668
    :catch_1
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "do not use Smart Bonding due to following exception"

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 670
    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 677
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->executeOriginal(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    goto :goto_4
.end method

.method protected execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;)Lorg/apache/http/HttpResponse;
    .locals 37
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "startOffset"    # J
    .param p6, "endOffset"    # J
    .param p8, "localAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1774
    if-nez p8, :cond_0

    .line 1775
    new-instance v32, Ljava/io/IOException;

    const-string v33, "The Interface IP is NULL, wait for Interface to be UP"

    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 1780
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    const-string v33, "http.route.local-address"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    const-string v33, "http.protocol.handle-redirects"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v6

    .line 1784
    .local v6, "connectionTimeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    const-string v33, "http.connection.timeout"

    const/16 v34, 0x2710

    move/from16 v0, v34

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1786
    new-instance v33, Lorg/apache/http/impl/client/ClientParamsStack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    check-cast v32, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    check-cast v32, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    check-cast v32, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    check-cast v32, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    .line 1789
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    .line 1790
    move-object/from16 v17, p2

    .line 1791
    .local v17, "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v19

    .line 1793
    .local v19, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1795
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v18

    .line 1797
    .local v18, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_1

    .line 1798
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "The route local ip address is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1801
    :cond_1
    new-instance v24, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1802
    .local v24, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_2

    .line 1803
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "The route local ip address is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1805
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v28

    .line 1807
    .local v28, "timeout":J
    const/4 v13, 0x0

    .line 1808
    .local v13, "execCount":I
    const/16 v23, 0x0

    .line 1809
    .local v23, "reuse":Z
    const/16 v21, 0x0

    .line 1810
    .local v21, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 1813
    .local v7, "done":Z
    :goto_0
    if-nez v7, :cond_e

    .line 1818
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v31

    .line 1819
    .local v31, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v25

    .line 1822
    .local v25, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const-string v32, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    .line 1826
    .local v30, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    if-nez v32, :cond_5

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Managed connection is null, will create new connection"

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1828
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_3

    .line 1829
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " The managedConn is Null so need to create new instance of managedConn"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1832
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v5

    .line 1834
    .local v5, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 1835
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1840
    :cond_4
    :try_start_1
    sget-object v32, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v28

    move-object/from16 v2, v32

    invoke-interface {v5, v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1848
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Stale connection check"

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Stale connection detected"

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1856
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1870
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_5
    :goto_1
    :try_start_4
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 1871
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 1876
    :cond_6
    const-wide/16 v26, 0x0

    .line 1877
    .local v26, "startTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v32

    if-nez v32, :cond_c

    .line 1878
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_7

    .line 1879
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " The managedConn is not opened"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1881
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 1892
    :goto_2
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_8

    .line 1893
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Execute The instance id of ManagedClientConnection "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->hashCode()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1897
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_5
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1907
    :try_start_6
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 1910
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1913
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    const-string v33, "http.virtual-host"

    invoke-interface/range {v32 .. v33}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object/from16 p1, v0

    .line 1916
    if-nez p1, :cond_9

    .line 1917
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 1920
    :cond_9
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v20

    .line 1923
    .local v20, "proxy":Lorg/apache/http/HttpHost;
    const-string v32, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1924
    const-string v32, "http.proxy_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1925
    const-string v32, "http.connection"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1927
    const-string v32, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v33, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1929
    const-string v32, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v33, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 1935
    const-string v32, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1937
    const/16 v22, 0x1

    .line 1938
    .local v22, "retrying":Z
    :goto_3
    if-eqz v22, :cond_18

    .line 1940
    add-int/lit8 v13, v13, 0x1

    .line 1942
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 1943
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_a

    .line 1944
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RangeRequest from bytes="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "for managed connection id: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->hashCode()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1949
    :cond_a
    const-string v32, "Range"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "bytes="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    sget-boolean v32, Lorg/apache/http/impl/client/DefaultRequestDirector;->IS_KEEP_ALIVE:Z

    if-eqz v32, :cond_b

    .line 1953
    const-string v32, "Connection"

    const-string v33, "Keep-Alive"

    invoke-virtual/range {v31 .. v33}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    :cond_b
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_12

    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v32

    if-nez v32, :cond_12

    .line 1957
    new-instance v32, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v33, "Cannot retry request with a non-repeatable request entity"

    invoke-direct/range {v32 .. v33}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v32
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2070
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local v22    # "retrying":Z
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "startTime":J
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v12

    .line 2071
    .local v12, "ex":Lorg/apache/http/HttpException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 2072
    throw v12

    .line 1842
    .end local v12    # "ex":Lorg/apache/http/HttpException;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1
    move-exception v15

    .line 1843
    .local v15, "interrupted":Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v16, Ljava/io/InterruptedIOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/InterruptedIOException;-><init>()V

    .line 1844
    .local v16, "iox":Ljava/io/InterruptedIOException;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1845
    throw v16
    :try_end_7
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2073
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v15    # "interrupted":Ljava/lang/InterruptedException;
    .end local v16    # "iox":Ljava/io/InterruptedIOException;
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_2
    move-exception v12

    .line 2074
    .local v12, "ex":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 2075
    throw v12

    .line 1888
    .end local v12    # "ex":Ljava/io/IOException;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "startTime":J
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v33

    invoke-interface/range {v32 .. v33}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 2076
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "startTime":J
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_3
    move-exception v12

    .line 2077
    .local v12, "ex":Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 2078
    throw v12

    .line 1898
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "startTime":J
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_4
    move-exception v12

    .line 1899
    .local v12, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1902
    :cond_d
    invoke-virtual {v12}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 2055
    .end local v12    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "startTime":J
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_e
    if-eqz v21, :cond_f

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    if-eqz v32, :cond_f

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v32

    if-nez v32, :cond_21

    .line 2058
    :cond_f
    if-eqz v23, :cond_10

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 2060
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 2067
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    const/16 v33, 0x1388

    invoke-interface/range {v32 .. v33}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_9
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    .line 2069
    :cond_11
    return-object v21

    .line 1963
    .restart local v20    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v22    # "retrying":Z
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26    # "startTime":J
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v32

    if-eqz v32, :cond_13

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Attempt "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " to execute request"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1968
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 1969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v26

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->mConnectionTime:J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    .line 1970
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1971
    :catch_5
    move-exception v12

    .line 1972
    .local v12, "ex":Ljava/io/IOException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Closing the connection."

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-interface {v0, v12, v13, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v32

    if-eqz v32, :cond_14

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "I/O exception ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ") caught when processing request: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1981
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v32

    if-eqz v32, :cond_15

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1984
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Retrying request"

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1990
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Reopening the direct connection."

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_3

    .line 1986
    :cond_16
    throw v12

    .line 1995
    :cond_17
    throw v12

    .line 2001
    .end local v12    # "ex":Ljava/io/IOException;
    :cond_18
    if-eqz v21, :cond_19

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 2003
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 2004
    sget-boolean v32, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v32, :cond_1a

    .line 2005
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Range Request Remote InetAddress: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " Port Address: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2010
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v23

    .line 2011
    if-eqz v23, :cond_1b

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v8

    .line 2015
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    sget-object v33, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v9, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 2019
    .end local v8    # "duration":J
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v14

    .line 2021
    .local v14, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v14, :cond_1d

    .line 2022
    const/4 v7, 0x1

    .line 2045
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v30

    .line 2046
    const-string v32, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1c

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    .line 2050
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpRequest:Lorg/apache/http/HttpRequest;

    .line 2051
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpHost:Lorg/apache/http/HttpHost;

    goto/16 :goto_0

    .line 2024
    :cond_1d
    if-eqz v23, :cond_20

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v32, v0

    const-string v33, "Connection kept alive"

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2028
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 2029
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v10, :cond_1e

    .line 2030
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2034
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 2039
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    :goto_6
    invoke-virtual {v14}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1f

    .line 2040
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 2042
    :cond_1f
    move-object/from16 v24, v14

    goto :goto_5

    .line 2036
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_6

    .line 2063
    .end local v14    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local v22    # "retrying":Z
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26    # "startTime":J
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_21
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 2064
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v11, Lorg/apache/http/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-direct {v11, v10, v0, v1}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 2065
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_b
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 1857
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_6
    move-exception v32

    goto/16 :goto_1
.end method

.method protected execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;Ljava/net/InetAddress;)Lorg/apache/http/HttpResponse;
    .locals 35
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "offset"    # J
    .param p6, "contentLength"    # J
    .param p8, "localAddr"    # Ljava/net/InetAddress;
    .param p9, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1439
    if-nez p8, :cond_0

    .line 1440
    new-instance v30, Ljava/io/IOException;

    const-string v31, "The Interface IP is NULL, wait for Interface to be UP"

    invoke-direct/range {v30 .. v31}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1446
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    const-string v31, "http.route.local-address"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v6

    .line 1449
    .local v6, "connectionTimeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    const-string v31, "http.connection.timeout"

    const/16 v32, 0x2710

    move/from16 v0, v32

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1452
    new-instance v31, Lorg/apache/http/impl/client/ClientParamsStack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    check-cast v30, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    check-cast v30, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    check-cast v30, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    check-cast v30, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    .line 1455
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    .line 1456
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1458
    move-object/from16 v17, p2

    .line 1459
    .local v17, "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v19

    .line 1461
    .local v19, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1463
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v18

    .line 1464
    .local v18, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_1

    .line 1465
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The route local ip address is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1466
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Local address at param: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v31, v0

    const-string v32, "http.route.local-address"

    invoke-interface/range {v31 .. v32}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1469
    :cond_1
    new-instance v24, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1470
    .local v24, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_2

    .line 1471
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The route local ip address is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1472
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "User-Agent: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v31, v0

    const-string v32, "http.useragent"

    invoke-interface/range {v31 .. v32}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1474
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v26

    .line 1476
    .local v26, "timeout":J
    const/4 v13, 0x0

    .line 1477
    .local v13, "execCount":I
    const/16 v23, 0x0

    .line 1478
    .local v23, "reuse":Z
    const/16 v21, 0x0

    .line 1479
    .local v21, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 1480
    .local v7, "done":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Inside execute to send the request for range request."

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1482
    :cond_3
    :goto_0
    if-nez v7, :cond_10

    .line 1487
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v29

    .line 1488
    .local v29, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v25

    .line 1490
    .local v25, "route":Lorg/apache/http/conn/routing/HttpRoute;
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_4

    .line 1491
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The route local ip address is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1494
    :cond_4
    const-string v30, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    .line 1498
    .local v28, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    if-nez v30, :cond_7

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Managed connection is null, will create new connection"

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1500
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_5

    .line 1501
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " The managedConn is Null so need to create new instance of managedConn"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1504
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v5

    .line 1506
    .local v5, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 1507
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1512
    :cond_6
    :try_start_1
    sget-object v30, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v30

    invoke-interface {v5, v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1520
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Stale connection check"

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Stale connection detected"

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1528
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1542
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_7
    :goto_1
    :try_start_4
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 1543
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 1548
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v30

    if-nez v30, :cond_e

    .line 1549
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_9

    .line 1550
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " The managedConn is not opened"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1552
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    .line 1562
    :goto_2
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_a

    .line 1563
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Execute The instance id of ManagedClientConnection "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->hashCode()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1567
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_5
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1577
    :try_start_6
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 1580
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1583
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.virtual-host"

    invoke-interface/range {v30 .. v31}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object/from16 p1, v0

    .line 1586
    if-nez p1, :cond_b

    .line 1587
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 1590
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v20

    .line 1593
    .local v20, "proxy":Lorg/apache/http/HttpHost;
    const-string v30, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1594
    const-string v30, "http.proxy_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1595
    const-string v30, "http.connection"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1597
    const-string v30, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v31, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1599
    const-string v30, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v31, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 1605
    const-string v30, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1607
    const/16 v22, 0x1

    .line 1608
    .local v22, "retrying":Z
    :goto_3
    if-eqz v22, :cond_19

    .line 1610
    add-int/lit8 v13, v13, 0x1

    .line 1612
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 1613
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_c

    .line 1614
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "RangeRequest from bytes="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "for managed connection id: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->hashCode()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1618
    :cond_c
    const-string v30, "Range"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "bytes="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    sget-boolean v30, Lorg/apache/http/impl/client/DefaultRequestDirector;->IS_KEEP_ALIVE:Z

    if-eqz v30, :cond_d

    .line 1622
    const-string v30, "Connection"

    const-string v31, "Keep-Alive"

    invoke-virtual/range {v29 .. v31}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    :cond_d
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_13

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v30

    if-nez v30, :cond_13

    .line 1626
    new-instance v30, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v31, "Cannot retry request with a non-repeatable request entity"

    invoke-direct/range {v30 .. v31}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1734
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local v22    # "retrying":Z
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v28    # "userToken":Ljava/lang/Object;
    .end local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v12

    .line 1735
    .local v12, "ex":Lorg/apache/http/HttpException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1736
    throw v12

    .line 1514
    .end local v12    # "ex":Lorg/apache/http/HttpException;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v28    # "userToken":Ljava/lang/Object;
    .restart local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1
    move-exception v15

    .line 1515
    .local v15, "interrupted":Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v16, Ljava/io/InterruptedIOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/InterruptedIOException;-><init>()V

    .line 1516
    .local v16, "iox":Ljava/io/InterruptedIOException;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1517
    throw v16
    :try_end_7
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1737
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v15    # "interrupted":Ljava/lang/InterruptedException;
    .end local v16    # "iox":Ljava/io/InterruptedIOException;
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v28    # "userToken":Ljava/lang/Object;
    .end local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_2
    move-exception v12

    .line 1738
    .local v12, "ex":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1739
    throw v12

    .line 1558
    .end local v12    # "ex":Ljava/io/IOException;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v28    # "userToken":Ljava/lang/Object;
    .restart local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 1740
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v28    # "userToken":Ljava/lang/Object;
    .end local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_3
    move-exception v12

    .line 1741
    .local v12, "ex":Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 1742
    throw v12

    .line 1568
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v28    # "userToken":Ljava/lang/Object;
    .restart local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_4
    move-exception v12

    .line 1569
    .local v12, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1572
    :cond_f
    invoke-virtual {v12}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 1720
    .end local v12    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v28    # "userToken":Ljava/lang/Object;
    .end local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_10
    if-eqz v21, :cond_11

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    if-eqz v30, :cond_11

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v30

    if-nez v30, :cond_20

    .line 1723
    :cond_11
    if-eqz v23, :cond_12

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 1725
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 1732
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    const/16 v31, 0x1388

    invoke-interface/range {v30 .. v31}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_9
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1733
    return-object v21

    .line 1632
    .restart local v20    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v22    # "retrying":Z
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v28    # "userToken":Ljava/lang/Object;
    .restart local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_13
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v30

    if-eqz v30, :cond_14

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Attempt "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to execute request"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1637
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v21

    .line 1639
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1640
    :catch_5
    move-exception v12

    .line 1641
    .local v12, "ex":Ljava/io/IOException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Closing the connection."

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-interface {v0, v12, v13, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v30

    if-eqz v30, :cond_15

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "I/O exception ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ") caught when processing request: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1650
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v1, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1653
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Retrying request"

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1659
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Reopening the direct connection."

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    goto/16 :goto_3

    .line 1655
    :cond_17
    throw v12

    .line 1665
    :cond_18
    throw v12

    .line 1671
    .end local v12    # "ex":Ljava/io/IOException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 1673
    sget-boolean v30, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v30, :cond_1a

    .line 1674
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Range Request Remote InetAddress: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " Port Address: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1679
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v23

    .line 1680
    if-eqz v23, :cond_1b

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v8

    .line 1683
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    sget-object v31, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v8, v9, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 1686
    .end local v8    # "duration":J
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v14

    .line 1688
    .local v14, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v14, :cond_1c

    .line 1689
    const/4 v7, 0x1

    .line 1712
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v28

    .line 1713
    const-string v30, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1691
    :cond_1c
    if-eqz v23, :cond_1f

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v30, v0

    const-string v31, "Connection kept alive"

    invoke-interface/range {v30 .. v31}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1695
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 1696
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v10, :cond_1d

    .line 1697
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1701
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 1706
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    :goto_6
    invoke-virtual {v14}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v30

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1e

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 1709
    :cond_1e
    move-object/from16 v24, v14

    goto :goto_5

    .line 1703
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_6

    .line 1728
    .end local v14    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local v22    # "retrying":Z
    .end local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v28    # "userToken":Ljava/lang/Object;
    .end local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_20
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 1729
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v11, Lorg/apache/http/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-direct {v11, v10, v0, v1}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 1730
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_b
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 1529
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v25    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v28    # "userToken":Ljava/lang/Object;
    .restart local v29    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_6
    move-exception v30

    goto/16 :goto_1
.end method

.method protected execute([Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJJIZJI[Lorg/apache/http/HttpHost;I)Lorg/apache/http/HttpResponse;
    .locals 43
    .param p1, "targets"    # [Lorg/apache/http/HttpHost;
    .param p2, "request"    # [Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "fullContentLength"    # J
    .param p10, "netType"    # I
    .param p11, "bothTry"    # Z
    .param p12, "originalOffset"    # J
    .param p14, "oriMainInterfaceID"    # I
    .param p15, "mainProxy"    # [Lorg/apache/http/HttpHost;
    .param p16, "destIPVer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2110
    move/from16 v18, p10

    .line 2111
    .local v18, "interfaceID":I
    const/4 v9, 0x0

    .line 2112
    .local v9, "count":I
    const/16 v32, 0x0

    .line 2113
    .local v32, "target":Lorg/apache/http/HttpHost;
    const/16 v30, 0x0

    .line 2114
    .local v30, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    const/16 v22, 0x0

    .line 2115
    .local v22, "orig":Lorg/apache/http/HttpRequest;
    :cond_0
    :goto_0
    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v9, v0, :cond_25

    .line 2116
    aget-object v32, p1, v18

    .line 2117
    add-int/lit8 v9, v9, 0x1

    .line 2118
    move/from16 v0, v18

    move/from16 v1, p16

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v21

    .line 2119
    .local v21, "localAddr":Ljava/net/InetAddress;
    if-nez v21, :cond_2

    .line 2120
    if-eqz p11, :cond_1

    .line 2121
    add-int/lit8 v37, v18, 0x1

    rem-int/lit8 v18, v37, 0x2

    .line 2122
    goto :goto_0

    .line 2125
    :cond_1
    new-instance v37, Ljava/io/IOException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "cannot find local IP Address for network "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 2128
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    const-string v38, "http.route.local-address"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    const-string v38, "http.protocol.handle-redirects"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    const-string v38, "http.route.default-proxy"

    aget-object v39, p15, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2138
    new-instance v38, Lorg/apache/http/impl/client/ClientParamsStack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    check-cast v37, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    check-cast v37, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    check-cast v37, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    check-cast v37, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    .line 2141
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    .line 2142
    sget-boolean v37, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v37, :cond_3

    .line 2143
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Connecting to Host: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    aget-object v38, p1, v18

    invoke-virtual/range {v38 .. v38}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2144
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Default Proxy = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    aget-object v37, p2, v18

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v37

    if-eqz v37, :cond_9

    aget-object v37, p2, v18

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v37

    const-string v39, "http.route.default-proxy"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    :goto_1
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2145
    const-string v37, "Calling from executeAfterMainException : After modification of params"

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2147
    :cond_3
    aget-object v22, p2, v18

    .line 2148
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v24

    .line 2150
    .local v24, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 2152
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v23

    .line 2154
    .local v23, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v30, Lorg/apache/http/impl/client/RoutedRequest;

    .end local v30    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 2156
    .restart local v30    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v33

    .line 2158
    .local v33, "timeout":J
    const/16 v16, 0x0

    .line 2160
    .local v16, "execCount":I
    const/16 v29, 0x0

    .line 2161
    .local v29, "reuse":Z
    const/16 v26, 0x0

    .line 2162
    .local v26, "response":Lorg/apache/http/HttpResponse;
    const/4 v10, 0x0

    .line 2164
    .local v10, "done":Z
    :goto_2
    if-nez v10, :cond_c

    .line 2169
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v36

    .line 2170
    .local v36, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v31

    .line 2173
    .local v31, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const-string v37, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    .line 2177
    .local v35, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    if-nez v37, :cond_5

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v5

    .line 2180
    .local v5, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v37, v0

    if-eqz v37, :cond_4

    .line 2181
    move-object/from16 v0, v22

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    :cond_4
    :try_start_1
    sget-object v37, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v33

    move-object/from16 v2, v37

    invoke-interface {v5, v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2195
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 2198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Stale connection check"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Stale connection detected"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2203
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2217
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_5
    :goto_3
    :try_start_4
    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v37, v0

    if-eqz v37, :cond_6

    .line 2218
    move-object/from16 v0, v22

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v38, v0

    invoke-interface/range {v37 .. v38}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 2223
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v37

    if-nez v37, :cond_a

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    move-object/from16 v2, p3

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 2236
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_5
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 2246
    :try_start_6
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 2249
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 2252
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v37

    const-string v38, "http.virtual-host"

    invoke-interface/range {v37 .. v38}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v0, v37

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object/from16 v32, v0

    .line 2255
    if-nez v32, :cond_7

    .line 2256
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v32

    .line 2259
    :cond_7
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v25

    .line 2262
    .local v25, "proxy":Lorg/apache/http/HttpHost;
    const-string v37, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2263
    const-string v37, "http.proxy_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2264
    const-string v37, "http.connection"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v38, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2266
    const-string v37, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v38, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2268
    const-string v37, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v38, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 2277
    const-string v37, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2279
    const/16 v28, 0x1

    .line 2280
    .local v28, "retrying":Z
    :goto_5
    if-eqz v28, :cond_17

    .line 2282
    add-int/lit8 v16, v16, 0x1

    .line 2284
    const-string v37, "Range"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "bytes="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 2287
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_11

    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v37

    if-nez v37, :cond_11

    .line 2288
    new-instance v37, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v38, "Cannot retry request with a non-repeatable request entity"

    invoke-direct/range {v37 .. v38}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 2419
    .end local v25    # "proxy":Lorg/apache/http/HttpHost;
    .end local v28    # "retrying":Z
    .end local v31    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v35    # "userToken":Ljava/lang/Object;
    .end local v36    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v15

    .line 2420
    .local v15, "ex":Ljava/lang/Throwable;
    sget-boolean v37, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v37, :cond_8

    invoke-static {v15}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 2421
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v6

    .line 2422
    .local v6, "connectionTimeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    const-string v38, "http.connection.timeout"

    const/16 v39, 0x2710

    move/from16 v0, v39

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2424
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 2425
    if-eqz p11, :cond_0

    .line 2426
    add-int/lit8 v37, p10, 0x1

    rem-int/lit8 v18, v37, 0x2

    goto/16 :goto_0

    .line 2144
    .end local v6    # "connectionTimeout":I
    .end local v10    # "done":Z
    .end local v15    # "ex":Ljava/lang/Throwable;
    .end local v16    # "execCount":I
    .end local v23    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v24    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v26    # "response":Lorg/apache/http/HttpResponse;
    .end local v29    # "reuse":Z
    .end local v33    # "timeout":J
    :cond_9
    const-string v37, "null"

    goto/16 :goto_1

    .line 2189
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v10    # "done":Z
    .restart local v16    # "execCount":I
    .restart local v23    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v24    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v26    # "response":Lorg/apache/http/HttpResponse;
    .restart local v29    # "reuse":Z
    .restart local v31    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v33    # "timeout":J
    .restart local v35    # "userToken":Ljava/lang/Object;
    .restart local v36    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1
    move-exception v19

    .line 2190
    .local v19, "interrupted":Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v20, Ljava/io/InterruptedIOException;

    invoke-direct/range {v20 .. v20}, Ljava/io/InterruptedIOException;-><init>()V

    .line 2191
    .local v20, "iox":Ljava/io/InterruptedIOException;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2192
    throw v20

    .line 2230
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v19    # "interrupted":Ljava/lang/InterruptedException;
    .end local v20    # "iox":Ljava/io/InterruptedIOException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    goto/16 :goto_4

    .line 2237
    :catch_2
    move-exception v15

    .line 2238
    .local v15, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_b

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2241
    :cond_b
    invoke-virtual {v15}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 2382
    .end local v15    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v31    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v35    # "userToken":Ljava/lang/Object;
    .end local v36    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_c
    if-eqz v26, :cond_d

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v37

    if-eqz v37, :cond_d

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v37

    if-nez v37, :cond_1f

    .line 2385
    :cond_d
    if-eqz v29, :cond_e

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 2387
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 2395
    :goto_6
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    .line 2397
    .local v27, "responseCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, p12

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getFullContentLength(Lorg/apache/http/HttpResponse;J)J

    move-result-wide v7

    .line 2399
    .local v7, "contentLengthFull":J
    const/16 v37, 0x193

    move/from16 v0, v27

    move/from16 v1, v37

    if-ne v0, v1, :cond_20

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    if-eqz v37, :cond_10

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v37

    if-eqz v37, :cond_f

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 2403
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 2430
    .end local v7    # "contentLengthFull":J
    .end local v10    # "done":Z
    .end local v16    # "execCount":I
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .end local v23    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v24    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v26    # "response":Lorg/apache/http/HttpResponse;
    .end local v27    # "responseCode":I
    .end local v29    # "reuse":Z
    .end local v33    # "timeout":J
    :cond_10
    :goto_7
    return-object v26

    .line 2294
    .restart local v10    # "done":Z
    .restart local v16    # "execCount":I
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    .restart local v23    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v24    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v25    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v26    # "response":Lorg/apache/http/HttpResponse;
    .restart local v28    # "retrying":Z
    .restart local v29    # "reuse":Z
    .restart local v31    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v33    # "timeout":J
    .restart local v35    # "userToken":Ljava/lang/Object;
    .restart local v36    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_12

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Attempt "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " to execute request"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2299
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v26

    .line 2301
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 2302
    :catch_3
    move-exception v15

    .line 2303
    .local v15, "ex":Ljava/io/IOException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Closing the connection."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v15, v1, v2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v37

    if-eqz v37, :cond_13

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "I/O exception ("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ") caught when processing request: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 2312
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_14

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2315
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Retrying request"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 2322
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_16

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Reopening the direct connection."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    move-object/from16 v2, p3

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_5

    .line 2317
    :cond_15
    throw v15

    .line 2327
    :cond_16
    throw v15

    .line 2333
    .end local v15    # "ex":Ljava/io/IOException;
    :cond_17
    if-eqz v26, :cond_18

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 2335
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    move-object/from16 v2, v38

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v29

    .line 2339
    if-eqz v29, :cond_19

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v11

    .line 2343
    .local v11, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    sget-object v38, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-interface {v0, v11, v12, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 2347
    .end local v11    # "duration":J
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v17

    .line 2348
    .local v17, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v17, :cond_1b

    .line 2349
    const/4 v10, 0x1

    .line 2372
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v35

    .line 2373
    const-string v37, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1a

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    .line 2377
    :cond_1a
    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpRequest:Lorg/apache/http/HttpRequest;

    .line 2378
    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpHost:Lorg/apache/http/HttpHost;

    goto/16 :goto_2

    .line 2351
    :cond_1b
    if-eqz v29, :cond_1e

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Connection kept alive"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2355
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 2356
    .local v13, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v13, :cond_1c

    .line 2357
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2361
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 2366
    .end local v13    # "entity":Lorg/apache/http/HttpEntity;
    :goto_9
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v37

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1d

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 2369
    :cond_1d
    move-object/from16 v30, v17

    goto :goto_8

    .line 2363
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_9

    .line 2390
    .end local v17    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v25    # "proxy":Lorg/apache/http/HttpHost;
    .end local v28    # "retrying":Z
    .end local v31    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v35    # "userToken":Ljava/lang/Object;
    .end local v36    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_1f
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 2391
    .restart local v13    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v14, Lorg/apache/http/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-direct {v14, v13, v0, v1}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 2392
    .end local v13    # "entity":Lorg/apache/http/HttpEntity;
    .local v14, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_6

    .line 2406
    .end local v14    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "contentLengthFull":J
    .restart local v27    # "responseCode":I
    :cond_20
    const/16 v37, 0xc8

    move/from16 v0, v27

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    const/16 v37, 0xce

    move/from16 v0, v27

    move/from16 v1, v37

    if-eq v0, v1, :cond_24

    :cond_21
    cmp-long v37, p8, v7

    if-eqz v37, :cond_24

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v37

    sub-long v39, p6, p4

    const-wide/16 v41, 0x1

    sub-long v39, v39, v41

    cmp-long v37, v37, v39

    if-eqz v37, :cond_24

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    if-eqz v37, :cond_23

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v37

    if-eqz v37, :cond_22

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 2412
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 2414
    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 2416
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    if-eqz v37, :cond_10

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v37, v0

    const/16 v38, 0x1388

    invoke-interface/range {v37 .. v38}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_7

    .line 2430
    .end local v7    # "contentLengthFull":J
    .end local v10    # "done":Z
    .end local v16    # "execCount":I
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .end local v23    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v24    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v26    # "response":Lorg/apache/http/HttpResponse;
    .end local v27    # "responseCode":I
    .end local v29    # "reuse":Z
    .end local v33    # "timeout":J
    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 2204
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v10    # "done":Z
    .restart local v16    # "execCount":I
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    .restart local v23    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v24    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v26    # "response":Lorg/apache/http/HttpResponse;
    .restart local v29    # "reuse":Z
    .restart local v31    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v33    # "timeout":J
    .restart local v35    # "userToken":Ljava/lang/Object;
    .restart local v36    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_4
    move-exception v37

    goto/16 :goto_3
.end method

.method protected getConnectionTime()J
    .locals 2

    .prologue
    .line 3411
    iget-wide v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mConnectionTime:J

    return-wide v0
.end method

.method protected getFullContentLength(Lorg/apache/http/HttpResponse;J)J
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "originalOffset"    # J

    .prologue
    .line 3423
    const-wide/16 v3, 0x0

    .line 3424
    .local v3, "fullContentLength":J
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 3426
    .local v1, "contentLength":J
    const-string v7, "Content-Range"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 3427
    .local v6, "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    if-eqz v6, :cond_1

    .line 3428
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 3429
    .local v0, "byteRange":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 3431
    .local v5, "indexOfSlash":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 3433
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3445
    .end local v0    # "byteRange":Ljava/lang/String;
    .end local v5    # "indexOfSlash":I
    :goto_0
    return-wide v3

    .line 3438
    .restart local v0    # "byteRange":Ljava/lang/String;
    .restart local v5    # "indexOfSlash":I
    :cond_0
    add-long v3, v1, p2

    goto :goto_0

    .line 3443
    .end local v0    # "byteRange":Ljava/lang/String;
    .end local v5    # "indexOfSlash":I
    :cond_1
    move-wide v3, v1

    goto :goto_0
.end method

.method protected getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method protected getHttpRequest()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mHttpRequest:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 23
    .param p1, "roureq"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2872
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v19

    .line 2873
    .local v19, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v16

    .line 2874
    .local v16, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v18

    .line 2876
    .local v18, "request":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    .line 2878
    .local v15, "params":Lorg/apache/http/params/HttpParams;
    sget-boolean v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->SMARTBONDING_ENABLED:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 2879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpClientParams.isRedirecting(params) : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this.redirectHandler.isRedirectRequested(response, context) : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2883
    :cond_0
    invoke-static {v15}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2886
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-lt v3, v5, :cond_1

    .line 2887
    new-instance v3, Lorg/apache/http/client/RedirectException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Maximum redirects ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") exceeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2890
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 2892
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v21

    .line 2894
    .local v21, "uri":Ljava/net/URI;
    new-instance v13, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v3, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2899
    .local v13, "newTarget":Lorg/apache/http/HttpHost;
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 2901
    .local v17, "redirect":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v14

    .line 2902
    .local v14, "orig":Lorg/apache/http/HttpRequest;
    invoke-interface {v14}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 2904
    new-instance v22, Lorg/apache/http/impl/client/RequestWrapper;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 2905
    .local v22, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 2907
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v12

    .line 2908
    .local v12, "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v11, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v22

    invoke-direct {v11, v0, v12}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 2910
    .local v11, "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2911
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' via "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 p1, v11

    .line 2984
    .end local v11    # "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v12    # "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v13    # "newTarget":Lorg/apache/http/HttpHost;
    .end local v14    # "orig":Lorg/apache/http/HttpRequest;
    .end local v17    # "redirect":Lorg/apache/http/client/methods/HttpGet;
    .end local v21    # "uri":Ljava/net/URI;
    .end local v22    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local p1    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    :cond_3
    :goto_0
    return-object p1

    .line 2917
    .restart local p1    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    :cond_4
    const-string v3, "http.auth.credentials-provider"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/client/CredentialsProvider;

    .line 2920
    .local v9, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-eqz v9, :cond_a

    invoke-static {v15}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2922
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2924
    const-string v3, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/HttpHost;

    .line 2926
    .local v20, "target":Lorg/apache/http/HttpHost;
    if-nez v20, :cond_5

    .line 2927
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v20

    .line 2930
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Target requested authentication"

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2931
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v4

    .line 2934
    .local v4, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2943
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 2945
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2949
    const/16 p1, 0x0

    goto :goto_0

    .line 2937
    :catch_0
    move-exception v10

    .line 2938
    .local v10, "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2939
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 2940
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 2953
    .end local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v10    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .end local v20    # "target":Lorg/apache/http/HttpHost;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 2956
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2958
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Proxy requested authentication"

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v4

    .line 2962
    .restart local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2971
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2977
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 2965
    :catch_1
    move-exception v10

    .line 2966
    .restart local v10    # "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2967
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 2968
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 2981
    .end local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v10    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 2984
    :cond_a
    const/16 p1, 0x0

    goto/16 :goto_0
.end method

.method isRangeRequestProper(Lorg/apache/http/HttpRequest;)I
    .locals 11
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 3201
    const/4 v5, -0x1

    .line 3203
    .local v5, "offset":I
    const-string v9, "Range"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpRequest;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 3205
    .local v8, "rangeRequestHeader":Lorg/apache/http/Header;
    if-eqz v8, :cond_6

    .line 3206
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 3207
    .local v7, "rangeRequest":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 3208
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 3210
    const-string v9, "bytes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3211
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3212
    .local v1, "index1":I
    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3213
    .local v2, "index2":I
    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 3214
    .local v3, "index3":I
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 3216
    .local v4, "index4":I
    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    add-int/lit8 v9, v1, 0x1

    if-ge v9, v2, :cond_0

    if-ne v2, v3, :cond_0

    if-ltz v4, :cond_3

    .line 3217
    :cond_0
    sget-boolean v9, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRangeRequestProper : a unexpected range request : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3218
    :cond_1
    const/4 v5, -0x1

    .line 3238
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "index3":I
    .end local v4    # "index4":I
    .end local v7    # "rangeRequest":Ljava/lang/String;
    :cond_2
    :goto_0
    return v5

    .line 3220
    .restart local v1    # "index1":I
    .restart local v2    # "index2":I
    .restart local v3    # "index3":I
    .restart local v4    # "index4":I
    .restart local v7    # "rangeRequest":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3222
    .local v6, "offsetString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 3223
    sget-boolean v9, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRangeRequestProper : a unexpected initial range in range request : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3224
    :cond_4
    const/4 v5, -0x1

    goto :goto_0

    .line 3227
    :cond_5
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 3229
    :catch_0
    move-exception v0

    .line 3230
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v5, -0x1

    .line 3231
    sget-boolean v9, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v9, :cond_2

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3237
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "index3":I
    .end local v4    # "index4":I
    .end local v6    # "offsetString":Ljava/lang/String;
    .end local v7    # "rangeRequest":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method isTargetAddressProper(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 3247
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3253
    :cond_0
    const/4 v0, 0x0

    .line 3255
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected reconnect(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 18
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3106
    if-nez p4, :cond_0

    .line 3107
    new-instance v13, Ljava/io/IOException;

    const-string v14, "The Interface IP is NULL, wait for Interface to be UP"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3110
    :cond_0
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_1

    .line 3111
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Local IP address at reconnect is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3113
    :cond_1
    const-string v13, "Calling from reconnect : before modification of params"

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3117
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const-string v14, "http.route.local-address"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v14, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3118
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const-string v14, "http.protocol.allow-circular-redirects"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3119
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const-string v14, "http.protocol.handle-redirects"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3120
    new-instance v14, Lorg/apache/http/impl/client/ClientParamsStack;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    check-cast v13, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    check-cast v13, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    check-cast v13, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    check-cast v13, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v13}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    .line 3124
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_2

    .line 3125
    const-string v13, "Calling from reconnect : before modification of params"

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3130
    :cond_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mLocalAndRemoteAddr:I

    .line 3131
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    .line 3133
    move-object/from16 v5, p2

    .line 3134
    .local v5, "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v7

    .line 3135
    .local v7, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v7, v13}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 3137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v7, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    .line 3138
    .local v6, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_3

    .line 3139
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Route of mannaged connection is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3141
    :cond_3
    new-instance v8, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v8, v7, v6}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 3142
    .local v8, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_4

    .line 3143
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Route of mannaged connection is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3145
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v13}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v10

    .line 3146
    .local v10, "timeout":J
    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v9

    .line 3149
    .local v9, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const-string v13, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 3151
    .local v12, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v13, :cond_7

    .line 3152
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_5

    .line 3153
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " The managedConn is Null so need to create new instance of managedConn"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3157
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v13, v9, v12}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v3

    .line 3159
    .local v3, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    instance-of v13, v5, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v13, :cond_6

    .line 3160
    move-object v0, v5

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object v13, v0

    invoke-interface {v13, v3}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V

    .line 3164
    :cond_6
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v10, v11, v13}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 3167
    .end local v3    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_7
    instance-of v13, v5, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v13, :cond_8

    .line 3168
    check-cast v5, Lorg/apache/http/client/methods/AbortableHttpRequest;

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5, v13}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 3172
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v13}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v13

    if-nez v13, :cond_a

    .line 3173
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_9

    .line 3174
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " The managedConn is not opened"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3176
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Route of mannaged connection is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3179
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mCustomHttpParams:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->mRemoteAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p3

    invoke-interface {v13, v9, v0, v14, v15}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3188
    :cond_a
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reconnect The instance id of ManagedClientConnection "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3189
    :cond_b
    return-void

    .line 3182
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v7    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v9    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v10    # "timeout":J
    .end local v12    # "userToken":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 3183
    .local v4, "e":Ljava/lang/Throwable;
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_c

    .line 3184
    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 3186
    :cond_c
    throw v4
.end method

.method protected releaseConnection()V
    .locals 3

    .prologue
    .line 2444
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2448
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 2449
    return-void

    .line 2445
    :catch_0
    move-exception v0

    .line 2446
    .local v0, "ignored":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/impl/client/RequestWrapper;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 573
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 574
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 576
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 578
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-static {v2, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v2

    .line 579
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 593
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v2

    .line 585
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/http/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "param"    # Lorg/apache/http/params/HttpParams;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 3380
    :try_start_0
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set Parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3381
    :cond_0
    instance-of v3, p1, Lorg/apache/http/impl/client/ClientParamsStack;

    if-eqz v3, :cond_5

    .line 3382
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/client/ClientParamsStack;

    move-object v1, v0

    .line 3383
    .local v1, "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3384
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3404
    .end local v1    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :cond_1
    :goto_0
    return-void

    .line 3387
    .restart local v1    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3388
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3401
    .end local v1    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :catch_0
    move-exception v2

    .line 3402
    .local v2, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3390
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3391
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3393
    :cond_4
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3394
    invoke-virtual {v1}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3398
    .end local v1    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :cond_5
    invoke-interface {p1, p2, p3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
