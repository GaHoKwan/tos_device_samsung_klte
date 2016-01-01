.class public Lorg/apache/http/impl/client/secgbaclient/Nonce;
.super Ljava/lang/Object;
.source "Nonce.java"


# static fields
.field private static final AUTN_SIZE:I = 0x10

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final RAND_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Nonce"


# instance fields
.field private autn:[B

.field private rand:[B

.field private randAutn:[B

.field private serverData:[B

.field private strNonce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "Nonce"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getAutn()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->autn:[B

    return-object v0
.end method

.method public getAutnRand()[B
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->randAutn:[B

    return-object v0
.end method

.method public getRand()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->rand:[B

    return-object v0
.end method

.method public getServerData()[B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->serverData:[B

    return-object v0
.end method

.method public getStrNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->strNonce:Ljava/lang/String;

    return-object v0
.end method

.method public parseNonce(Ljava/lang/String;)V
    .locals 13
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x20

    const/16 v10, 0x11

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "decodedNonce":[B
    new-array v2, v10, [B

    .line 122
    .local v2, "nonceCompR":[B
    new-array v1, v10, [B

    .line 123
    .local v1, "nonceCompA":[B
    const/16 v4, 0x22

    new-array v3, v4, [B

    .line 125
    .local v3, "randAutn":[B
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->setStrNonce(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/Nonce;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "Nonce"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodedNonce.length is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    array-length v4, v0

    if-lt v4, v9, :cond_0

    .line 132
    aput-byte v9, v2, v8

    .line 133
    invoke-static {v0, v8, v2, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->setRand([B)V

    .line 135
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getRand()[B

    move-result-object v4

    invoke-static {v4, v8, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/Nonce;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "Nonce"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HexRAND is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getRand()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    array-length v4, v0

    if-lt v4, v11, :cond_1

    .line 142
    aput-byte v9, v1, v8

    .line 143
    invoke-static {v0, v9, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->setAutn([B)V

    .line 145
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getAutn()[B

    move-result-object v4

    invoke-static {v4, v8, v3, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    :cond_1
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/Nonce;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "Nonce"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hex Autn is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getAutn()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    array-length v4, v0

    if-le v4, v11, :cond_2

    .line 152
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v11, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->setServerData([B)V

    .line 157
    :cond_2
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/Nonce;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "Nonce"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hex RandAutn is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->setAutnRand([B)V

    .line 160
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/Nonce;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "Nonce"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setAutn([B)V
    .locals 0
    .param p1, "autn"    # [B

    .prologue
    .line 53
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->autn:[B

    .line 54
    return-void
.end method

.method public setAutnRand([B)V
    .locals 0
    .param p1, "autnRand"    # [B

    .prologue
    .line 101
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->randAutn:[B

    .line 102
    return-void
.end method

.method public setRand([B)V
    .locals 0
    .param p1, "rand"    # [B

    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->rand:[B

    .line 66
    return-void
.end method

.method public setServerData([B)V
    .locals 0
    .param p1, "serverData"    # [B

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->serverData:[B

    .line 78
    return-void
.end method

.method public setStrNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "strNonce"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->strNonce:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nonce ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->autn:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->autn:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->rand:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->rand:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->serverData:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->serverData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->strNonce:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strNonce="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->strNonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->randAutn:[B

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autnRand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/Nonce;->randAutn:[B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method
