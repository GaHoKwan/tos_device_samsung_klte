.class public Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;
.super Ljava/lang/Object;
.source "AuthorizationHeaderCreater.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "AuthorizationHeaderCreater"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private entityBody:[B

.field private gbaServiceKey:Ljava/lang/String;

.field private httpMethod:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthorizationHeaderCreater"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "algo"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/lang/String;
    .param p5, "qop"    # Ljava/lang/String;
    .param p6, "opaque"    # Ljava/lang/String;
    .param p7, "uri"    # Ljava/lang/String;
    .param p8, "gbaKey"    # Ljava/lang/String;
    .param p9, "entity"    # [B
    .param p10, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    .line 64
    iput-object p10, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "algo":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    .line 117
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Algo is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCnonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 185
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/Cnonce;->getCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setCnonce(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthorizationHeaderCreater"

    const-string v2, "cNonce is null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDigestResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;)V
    .locals 5
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    .param p2, "digestRes"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "response":Ljava/lang/String;
    move-object v0, p2

    .line 239
    if-eqz v0, :cond_0

    .line 241
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GBA Service digest Response is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Digest Response is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "nonce":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    .line 145
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Nonce is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNonceCount(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 200
    const-string v0, "00000001"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setNonceCount(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private setOpaque(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "opaque":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    .line 173
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Opaque is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setQop(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "qop":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "QOP is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRealm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "realm":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    .line 131
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "realm is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 5
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "gbaKey":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    .line 223
    if-eqz v0, :cond_0

    .line 225
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GBA Service Response is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "GBA Service Response is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUri(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "uri":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    .line 209
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setUri(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "URI is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUserName(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setUserName(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_1
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthorizationHeaderCreater"

    const-string v2, "userName is null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    .locals 7

    .prologue
    .line 70
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;-><init>()V

    .line 71
    .local v0, "authorizationHeader":Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    const/4 v2, 0x0

    .line 72
    .local v2, "digestResponse":Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, "digestCalculator":Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setUserName(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 75
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 76
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setCnonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 77
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setNonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 78
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setNonceCount(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 79
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setOpaque(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setQop(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 81
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setRealm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 82
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 83
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setUri(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 86
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;

    .end local v1    # "digestCalculator":Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    invoke-direct {v1, v0, v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;-><init>(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 91
    .restart local v1    # "digestCalculator":Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calculateDigest()Ljava/lang/String;

    move-result-object v2

    .line 92
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "AuthorizationHeaderCreater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Digest Response is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, v0, v2}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setDigestResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;)V

    .line 95
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityBody()[B
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    return-object v0
.end method

.method public getGbaServiceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnonce"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setEntityBody([B)V
    .locals 0
    .param p1, "entityBody"    # [B

    .prologue
    .line 416
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    .line 417
    return-void
.end method

.method public setGbaServiceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "gbaServiceKey"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setNonceCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonceCount"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .param p1, "opaque"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .param p1, "qop"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    .line 403
    return-void
.end method
