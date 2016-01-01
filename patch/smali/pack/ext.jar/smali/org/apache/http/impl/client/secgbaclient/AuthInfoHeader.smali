.class public Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;
.super Ljava/lang/Object;
.source "AuthInfoHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "Authentication-Info"


# instance fields
.field private cnonce:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private rspauth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->nonceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRspauth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->rspauth:Ljava/lang/String;

    return-object v0
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnonce"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->cnonce:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->nonce:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setNonceCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonceCount"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->nonceCount:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .param p1, "opaque"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->opaque:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .param p1, "qop"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->qop:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRspauth(Ljava/lang/String;)V
    .locals 0
    .param p1, "rspauth"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->rspauth:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticationInfoHeader [qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->qop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rspauth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->rspauth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->nonceCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthInfoHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
