.class public Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;
.super Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;
.source "WwwAuthHeaderParser.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "WwwAuthHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "WwwAuthHeaderParser"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private parse(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 3
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setScheme(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setRealm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setNonce(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setQop(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setStale(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setOpaque(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "WwwAuthHeaderParser"

    const-string v2, "Null Arguments"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 165
    .local v0, "algorithmVal":Ljava/lang/String;
    const-string v1, "algorithm[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private setNonce(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 150
    .local v0, "nonceVal":Ljava/lang/String;
    const-string v1, "nonce[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private setOpaque(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 197
    .local v0, "opaqueVal":Ljava/lang/String;
    const-string v1, "opaque[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setOpaque(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private setQop(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 181
    .local v0, "qopVal":Ljava/lang/String;
    const-string v1, "qop[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setQop(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private setRealm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 134
    .local v0, "realmVal":Ljava/lang/String;
    const-string v1, "realm[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setRealm(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private setScheme(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "Digest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "Digest"

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "Basic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "Basic"

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStale(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 213
    .local v0, "staleVal":Ljava/lang/String;
    const-string v1, "stale[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setStale(Z)V

    .line 222
    return-void
.end method


# virtual methods
.method public WwwAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "headerVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Parse the Header WwwAuthorizationHeader"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_0

    .line 46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Http response is Null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_0
    const-string v3, "WWW-Authenticate"

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 52
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "AuthHeader value is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 60
    .end local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .local v2, "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    :goto_0
    return-object v2

    .line 56
    .end local v2    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .restart local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .end local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;-><init>()V

    .line 57
    .restart local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->parse(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 58
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Header parsing Completed "

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 60
    .end local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .restart local v2    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    goto :goto_0
.end method

.method public proxyAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "headerVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 68
    .local v1, "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Parse the Header WwwAuthorizationHeader"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez p1, :cond_0

    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Http response is Null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    const-string v3, "Proxy-Authenticate"

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 78
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "AuthHeader value is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 86
    .end local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .local v2, "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    :goto_0
    return-object v2

    .line 82
    .end local v2    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .restart local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .end local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;-><init>()V

    .line 83
    .restart local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->parse(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 84
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Header parsing Completed "

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 86
    .end local v1    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .restart local v2    # "parseAuthHeader":Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    goto :goto_0
.end method
