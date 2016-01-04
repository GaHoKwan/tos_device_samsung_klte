.class public Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;
.super Ljava/lang/Object;
.source "DigestCalculator.java"


# static fields
.field private static final ALGORITHM_AKAV1_MD5:Ljava/lang/String; = "AKAv1-MD5"

.field private static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final QOP_AUTH_INT:Ljava/lang/String; = "auth-int"

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field private static final SEPARATOR:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "DigestCalculator"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private digestUri:Ljava/lang/String;

.field private httpMethod:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "DigestCalculator"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "digestUri"    # Ljava/lang/String;
    .param p4, "entityBody"    # [B

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->httpMethod:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->digestUri:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->httpMethod:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->digestUri:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->getAuthHeaderParamVal(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    .line 54
    return-void
.end method

.method private calcDigestHA1()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->algorithm:Ljava/lang/String;

    const-string v2, "MD5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->algorithm:Ljava/lang/String;

    const-string v2, "AKAv1-MD5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "DigestCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hA1 this.userName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->userName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "DigestCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hA1 this.realm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "DigestCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this.passwd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->passwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "a1":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcMD5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 162
    .end local v0    # "a1":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private calcDigestHA2()Ljava/lang/String;
    .locals 8

    .prologue
    .line 126
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->qop:Ljava/lang/String;

    const-string v5, "auth-int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const-string v1, ""

    .line 129
    .local v1, "emptyentityBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {p0, v4}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcMD5(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    .line 130
    .local v2, "entityHash":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entityHash :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entityHashlength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->httpMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->digestUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "a2":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a2 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "emptyentityBody":Ljava/lang/String;
    .end local v2    # "entityHash":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcMD5(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 146
    .local v3, "hA2":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hA2 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hA2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v3

    .line 140
    .end local v0    # "a2":Ljava/lang/String;
    .end local v3    # "hA2":Ljava/lang/String;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hA2 digestUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->digestUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->httpMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->digestUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "a2":Ljava/lang/String;
    goto :goto_0
.end method

.method private calcMD5(Ljava/lang/String;)[B
    .locals 3
    .param p1, "a1"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 169
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 170
    const-string v2, "CP1252"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 176
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 172
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private calculateAuthDigest()Ljava/lang/String;
    .locals 8

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcDigestHA1()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "HA1":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HA1 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->getData()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "data":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "keyString":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcMD5(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 107
    .local v3, "response":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "DigestCalculator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v3
.end method

.method private getAuthHeaderParamVal(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 2
    .param p1, "authHeader"    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .prologue
    .line 181
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->userName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->algorithm:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getCnonce()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcMD5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->cnonce:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->cnonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setCnonce(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->nonce:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getNonceCount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->nonceCount:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->qop:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->realm:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getResponse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->passwd:Ljava/lang/String;

    .line 190
    return-void
.end method

.method private getData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calcDigestHA2()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "hA2":Ljava/lang/String;
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "DigestCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this.cnonce :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->cnonce:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->nonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->nonceCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->cnonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->qop:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method private isInputDataValid()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->cnonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->qop:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->nonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->nonceCount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->passwd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->realm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->digestUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calculateDigest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->isInputDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calculateAuthDigest()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "DigestCalculator"

    const-string v2, "Input data is not valid, digest cannot be calculated"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method
