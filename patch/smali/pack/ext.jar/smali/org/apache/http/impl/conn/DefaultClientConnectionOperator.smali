.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# static fields
.field private static final TIMEOUT_FOR_DNS_FAIL:J = 0x2710L

.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 100
    return-void
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 25
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getSBEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_0

    .line 118
    const-string v5, "Inside DefaultClientConnectionOperator.openConnection()"

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 121
    :cond_0
    if-nez p1, :cond_1

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_1
    if-nez p2, :cond_2

    .line 126
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Target host must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_2
    if-nez p5, :cond_3

    .line 132
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameters must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be open."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v21

    .line 141
    .local v21, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v22

    .line 144
    .local v22, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v22

    instance-of v5, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v5, :cond_e

    .line 145
    sget-object v3, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .local v3, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v18, v22

    .line 146
    check-cast v18, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 152
    .local v18, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_0
    const/4 v5, 0x0

    new-array v10, v5, [Ljava/net/InetAddress;

    .line 153
    .local v10, "addresses":[Ljava/net/InetAddress;
    invoke-static {}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getSBEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 154
    const/16 v16, 0x0

    .line 155
    .local v16, "ipVer":I
    const-string v5, "SMARTBONDING_MAIN_SOCKET_IPVER"

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 156
    .local v17, "ipv":Ljava/lang/Object;
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 157
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest IPVer set in context is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 158
    :cond_5
    check-cast v17, Ljava/lang/Integer;

    .end local v17    # "ipv":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 160
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->getIPStyle(Ljava/net/InetAddress;I)I

    move-result v15

    .line 161
    .local v15, "ipStyle":I
    if-lez v15, :cond_f

    .line 162
    const-wide/16 v23, 0x0

    .line 163
    .local v23, "threadID":J
    const-string v5, "SMARTBONDING_MAIN_THREAD_ID"

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 164
    .local v20, "obj":Ljava/lang/Object;
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_7

    .line 165
    check-cast v20, Ljava/lang/Long;

    .end local v20    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 167
    :cond_7
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get host IP from service with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipStyle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 168
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-static {v0, v1, v5, v15}, Lorg/apache/http/impl/client/CustomHttpClient;->getAddrsByHost(JLjava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v10

    .line 174
    .end local v23    # "threadID":J
    :goto_1
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_9

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DefaultClientConnectionOperator.openConnection() InetAddress.getAllByName length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 183
    .end local v15    # "ipStyle":I
    .end local v16    # "ipVer":I
    :cond_9
    :goto_2
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v5, v10

    if-ge v14, v5, :cond_d

    .line 184
    invoke-interface {v3}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 185
    .local v4, "sock":Ljava/net/Socket;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 188
    :try_start_0
    aget-object v5, v10, v14

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v12

    .line 193
    .local v12, "connsock":Ljava/net/Socket;
    invoke-static {}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getSBEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_a

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DefaultClientConnectionOperator.openConnection() connsock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 197
    :cond_a
    if-eq v4, v12, :cond_b

    .line 198
    move-object v4, v12

    .line 199
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 212
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 213
    if-eqz v18, :cond_12

    .line 214
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v19

    .line 218
    .local v19, "layeredsock":Ljava/net/Socket;
    move-object/from16 v0, v19

    if-eq v0, v4, :cond_c

    .line 219
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 221
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 226
    .end local v19    # "layeredsock":Ljava/net/Socket;
    :goto_4
    invoke-static {}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getSBEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Servers selected Ip address is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v10, v14

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v12    # "connsock":Ljava/net/Socket;
    :cond_d
    return-void

    .line 148
    .end local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v14    # "i":I
    .end local v18    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_e
    move-object/from16 v3, v22

    .line 149
    .restart local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/16 v18, 0x0

    .restart local v18    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto/16 :goto_0

    .line 171
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .restart local v15    # "ipStyle":I
    .restart local v16    # "ipVer":I
    :cond_f
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_10

    const-string v5, "get host IP from default"

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 172
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    goto/16 :goto_1

    .line 180
    .end local v15    # "ipStyle":I
    .end local v16    # "ipVer":I
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    goto/16 :goto_2

    .line 223
    .restart local v4    # "sock":Ljava/net/Socket;
    .restart local v12    # "connsock":Ljava/net/Socket;
    .restart local v14    # "i":I
    :cond_12
    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 231
    .end local v12    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v13

    .line 232
    .local v13, "ex":Ljava/net/SocketException;
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_14

    .line 233
    instance-of v5, v13, Ljava/net/ConnectException;

    if-eqz v5, :cond_13

    check-cast v13, Ljava/net/ConnectException;

    .end local v13    # "ex":Ljava/net/SocketException;
    move-object v11, v13

    .line 235
    .local v11, "cause":Ljava/net/ConnectException;
    :goto_5
    new-instance v5, Lorg/apache/http/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v11}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v5

    .line 233
    .end local v11    # "cause":Ljava/net/ConnectException;
    .restart local v13    # "ex":Ljava/net/SocketException;
    :cond_13
    new-instance v11, Ljava/net/ConnectException;

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5, v13}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 238
    .end local v13    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v13

    .line 239
    .local v13, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_14

    .line 240
    throw v13

    .line 183
    .end local v13    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V
    .locals 17
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .param p6, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    :cond_0
    if-nez p2, :cond_1

    .line 258
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Target host must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_1
    if-nez p5, :cond_2

    .line 263
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameters must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Connection must not be open."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v15

    .line 269
    .local v15, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v15}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v16

    .line 272
    .local v16, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v16

    instance-of v5, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v5, :cond_6

    .line 273
    sget-object v3, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .local v3, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v13, v16

    .line 274
    check-cast v13, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 280
    .local v13, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_0
    invoke-interface {v3}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 281
    .local v4, "sock":Ljava/net/Socket;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 284
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v15, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v11

    .line 287
    .local v11, "connsock":Ljava/net/Socket;
    if-eq v4, v11, :cond_4

    .line 288
    move-object v4, v11

    .line 289
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 299
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 300
    if-eqz v13, :cond_7

    .line 301
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v15, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v13, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v14

    .line 304
    .local v14, "layeredsock":Ljava/net/Socket;
    if-eq v14, v4, :cond_5

    .line 305
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v14, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 307
    :cond_5
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 321
    .end local v14    # "layeredsock":Ljava/net/Socket;
    :goto_1
    return-void

    .line 276
    .end local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v11    # "connsock":Ljava/net/Socket;
    .end local v13    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_6
    move-object/from16 v3, v16

    .line 277
    .restart local v3    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v13, 0x0

    .restart local v13    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto :goto_0

    .line 309
    .restart local v4    # "sock":Ljava/net/Socket;
    .restart local v11    # "connsock":Ljava/net/Socket;
    :cond_7
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v5, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 313
    .end local v11    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v12

    .line 314
    .local v12, "ex":Ljava/net/SocketException;
    instance-of v5, v12, Ljava/net/ConnectException;

    if-eqz v5, :cond_8

    check-cast v12, Ljava/net/ConnectException;

    .end local v12    # "ex":Ljava/net/SocketException;
    move-object v10, v12

    .line 316
    .local v10, "cause":Ljava/net/ConnectException;
    :goto_2
    new-instance v5, Lorg/apache/http/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v10}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v5

    .line 314
    .end local v10    # "cause":Ljava/net/ConnectException;
    .restart local v12    # "ex":Ljava/net/SocketException;
    :cond_8
    new-instance v10, Ljava/net/ConnectException;

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5, v12}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 318
    .end local v12    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v12

    .line 319
    .local v12, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    throw v12
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 389
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 391
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 392
    .local v0, "linger":I
    if-ltz v0, :cond_0

    .line 393
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 396
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 336
    :cond_0
    if-nez p2, :cond_1

    .line 337
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 341
    :cond_1
    if-nez p4, :cond_2

    .line 342
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 345
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 346
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must be open."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 351
    .local v2, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-nez v4, :cond_4

    .line 352
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target scheme ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must have layered socket factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 360
    .local v1, "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 365
    .local v3, "sock":Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 366
    invoke-interface {v1, v3}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 369
    return-void

    .line 362
    .end local v3    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/net/ConnectException;
    new-instance v4, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v4, p2, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v4
.end method
