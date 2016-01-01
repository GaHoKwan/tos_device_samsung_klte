.class public Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;
.super Lorg/apache/http/impl/client/secgbaclient/GbaRequest;
.source "BsfRequest.java"


# static fields
.field private static final DEFAULT_ACCEPT:Ljava/lang/String; = "*/*"

.field private static final DEFAULT_CONNECTION:Ljava/lang/String; = "Keep-Alive"

.field private static final DEFAULT_HOST:Ljava/lang/String; = "bsf.msg.pc.t-mobile.com"

.field private static final DEFAULT_IMEI:Ljava/lang/String; = "354340052635242"

.field private static final DEFAULT_URI:Ljava/lang/String; = "https://bsf.msg.pc.t-mobile.com/"

.field private static final GBA_ME_USER_AGENT:Ljava/lang/String; = "GBA-service; 0.1; 3gpp-gba"

.field private static final GBA_UICC_USER_AGENT:Ljava/lang/String; = "GBA-service; 0.1; 3gpp-gba-uicc"

.field private static final HEADER_TMUS_IMEI:Ljava/lang/String; = "X-TMUS-IMEI"

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "BsfRequest"


# instance fields
.field private accept:Ljava/lang/String;

.field private bsfAuthorizationHeaderValue:Ljava/lang/String;

.field private bsfHost:Ljava/lang/String;

.field private bsfRequest:Lorg/apache/http/HttpRequest;

.field private bsfuri:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfRequest"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "gbaType"    # Ljava/lang/String;
    .param p4, "imei"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    .line 71
    if-nez p1, :cond_2

    .line 72
    const-string v0, "https://bsf.msg.pc.t-mobile.com/"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfuri:Ljava/lang/String;

    .line 75
    :goto_0
    if-nez p2, :cond_3

    .line 76
    const-string v0, "bsf.msg.pc.t-mobile.com"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfHost:Ljava/lang/String;

    .line 79
    :goto_1
    if-eqz p3, :cond_0

    const-string v0, "gba-u"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    :cond_0
    const-string v0, "GBA-service; 0.1; 3gpp-gba-uicc"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->userAgent:Ljava/lang/String;

    .line 87
    :cond_1
    :goto_2
    const-string v0, "*/*"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->accept:Ljava/lang/String;

    .line 88
    const-string v0, "Keep-Alive"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->connection:Ljava/lang/String;

    .line 90
    if-nez p4, :cond_5

    .line 91
    const-string v0, "354340052635242"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->imei:Ljava/lang/String;

    .line 94
    :goto_3
    return-void

    .line 74
    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfuri:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_3
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfHost:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_4
    const-string v0, "gba-me"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "GBA-service; 0.1; 3gpp-gba"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->userAgent:Ljava/lang/String;

    goto :goto_2

    .line 93
    :cond_5
    iput-object p4, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->imei:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public addAuthorizationHeader()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v1, "Authorization"

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfRequest"

    const-string v2, "Authorization header is Null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addProxyAuthorizationHeader()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v1, "Proxy-Authorization"

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfRequest"

    const-string v2, "Proxy Authorization header is Null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildRequest()Lorg/apache/http/HttpRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfuri:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "uri":Ljava/net/URI;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    .line 101
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 102
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 105
    const v1, 0xea60

    .line 107
    .local v1, "soTimeout":I
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 108
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 110
    const v3, 0xea60

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 113
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v3, v0}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 114
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "BsfRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HEADER_HOST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "Host"

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfHost:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->userAgent:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "Accept"

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->accept:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "X-TMUS-IMEI"

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->imei:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "Connection"

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->connection:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    return-object v3
.end method

.method public getAccept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->accept:Ljava/lang/String;

    return-object v0
.end method

.method public getBsfAuthorizationHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getBsfHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfHost:Ljava/lang/String;

    return-object v0
.end method

.method public getBsfRequest()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getBsfuri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfuri:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setAccept(Ljava/lang/String;)V
    .locals 0
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->accept:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setBsfAuthorizationHeaderValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "bsfAuthorizationHeaderValue"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfAuthorizationHeaderValue:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setBsfHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "bsfHost"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfHost:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setBsfRequest(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .param p1, "bsfRequest"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfRequest:Lorg/apache/http/HttpRequest;

    .line 159
    return-void
.end method

.method public setBsfuri(Ljava/lang/String;)V
    .locals 0
    .param p1, "bsfuri"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->bsfuri:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->connection:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->imei:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->userAgent:Ljava/lang/String;

    .line 183
    return-void
.end method
