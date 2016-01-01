.class public Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
.super Lorg/apache/http/impl/client/secgbaclient/AuthenticationHeaders;
.source "AuthorizationHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "Authorization"

.field public static final HEADER_PARAM_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final HEADER_PARAM_BASIC_SCHEME:Ljava/lang/String; = "Basic"

.field public static final HEADER_PARAM_DIGEST_SCHEME:Ljava/lang/String; = "Digest"

.field public static final HEADER_PARAM_DOMAIN:Ljava/lang/String; = "domain"

.field public static final HEADER_PARAM_NONCE:Ljava/lang/String; = "nonce"

.field public static final HEADER_PARAM_OPAQUE:Ljava/lang/String; = "opaque"

.field public static final HEADER_PARAM_REALM:Ljava/lang/String; = "realm"

.field public static final HEADER_PARAM_STALE:Ljava/lang/String; = "stale"

.field public static final HEADER_PARAM_UNKNOWN_SCHEME:Ljava/lang/String; = "Unknown"

.field public static final PROXY_HEADER_NAME:Ljava/lang/String; = "Proxy-Authorization"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationHeaders;-><init>()V

    .line 37
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->userName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->realm:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonce:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->algorithm:Ljava/lang/String;

    .line 41
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->uri:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->qop:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->opaque:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->cnonce:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->response:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private getHeaderValWithQop()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Digest username=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->userName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", nonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", uri=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->uri:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", qop=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->qop:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", response=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", opaque=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->opaque:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeaderValWithoutQopOpaque()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Digest username=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->userName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", nonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", uri=\"/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", response=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationHeaderVal(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isQop"    # Z

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 225
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getHeaderValWithQop()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getHeaderValWithoutQopOpaque()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "pValue"    # Ljava/lang/String;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 179
    new-instance p1, Ljava/lang/String;

    .end local p1    # "pValue":Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 181
    :cond_0
    return-object p1
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->algorithm:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnonce"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->cnonce:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonce:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNonceCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonceCount"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .param p1, "opaque"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->opaque:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .param p1, "qop"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->qop:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->realm:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->response:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->uri:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->userName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationHeader [username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->userName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->uri:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->qop:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->opaque:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->nonceCount:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
