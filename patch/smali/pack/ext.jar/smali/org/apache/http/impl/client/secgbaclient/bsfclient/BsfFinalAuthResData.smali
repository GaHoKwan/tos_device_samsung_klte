.class public Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;
.super Ljava/lang/Object;
.source "BsfFinalAuthResData.java"


# instance fields
.field private authInfoHeader:Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;

.field private bTid:Ljava/lang/String;

.field private ck:[B

.field private ik:[B

.field private impi:Ljava/lang/String;

.field private lifeTime:Ljava/lang/String;

.field private rand:[B

.field private startTimeForKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getAuthInfoHeader()Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->authInfoHeader:Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;

    return-object v0
.end method

.method public getCk()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->ck:[B

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->ik:[B

    return-object v0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->impi:Ljava/lang/String;

    return-object v0
.end method

.method public getLifeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->lifeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRand()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->rand:[B

    return-object v0
.end method

.method public getStartTimeForKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->startTimeForKey:Ljava/lang/String;

    return-object v0
.end method

.method public getbTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->bTid:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfoHeader(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;)V
    .locals 0
    .param p1, "authInfoHeader"    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->authInfoHeader:Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;

    .line 134
    return-void
.end method

.method public setCk([B)V
    .locals 0
    .param p1, "ck"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->ck:[B

    .line 63
    return-void
.end method

.method public setIk([B)V
    .locals 0
    .param p1, "ik"    # [B

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->ik:[B

    .line 75
    return-void
.end method

.method public setImpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->impi:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setLifeTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lifeTime"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->lifeTime:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRand([B)V
    .locals 0
    .param p1, "rand"    # [B

    .prologue
    .line 50
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->rand:[B

    .line 51
    return-void
.end method

.method public setStartTimeForKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTimeForKey"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->startTimeForKey:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setbTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bTid"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->bTid:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BsfAuthData [rand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->rand:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->ck:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ik="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->ik:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->impi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->lifeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->bTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
