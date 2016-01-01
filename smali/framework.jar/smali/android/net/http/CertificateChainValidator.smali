.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;

.field private static final sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    .line 53
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 264
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 271
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "defaultErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p2, :cond_0

    .end local p2    # "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 254
    return-void

    .restart local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    .line 252
    goto :goto_0
.end method

.method private static getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "Additional certificate path checker failed."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/CertificateChainValidator;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_0
    return-object v0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 4

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 146
    .local v2, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v3, v2, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v3, :cond_0

    .line 147
    move-object v0, v2

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v1, v0

    .line 148
    .local v1, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 6
    .param p0, "certChain"    # [[B
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 121
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_1
    array-length v4, p0

    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    .line 127
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 128
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 129
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t read certificate"

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 136
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "i":I
    :cond_2
    invoke-static {v3, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    return-object v4
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 14
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x0

    .line 166
    aget-object v2, p0, v10

    .line 167
    .local v2, "currCertificate":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_0

    .line 168
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "certificate for this site is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v11, p1, v2}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v6, v9

    .line 174
    .local v6, "valid":Z
    :goto_0
    if-nez v6, :cond_2

    .line 178
    new-instance v8, Landroid/net/http/SslError;

    invoke-direct {v8, v12, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 233
    :goto_1
    return-object v8

    .end local v6    # "valid":Z
    :cond_1
    move v6, v10

    .line 171
    goto :goto_0

    .line 182
    .restart local v6    # "valid":Z
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    .line 183
    .local v7, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v11, v7, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v11, :cond_3

    .line 184
    move-object v0, v7

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v5, v0

    .line 185
    .local v5, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    move-object/from16 v0, p2

    invoke-virtual {v5, p0, v0, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v5    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local v7    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v3

    .line 192
    .local v3, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    .line 193
    .local v1, "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-nez v1, :cond_4

    .line 194
    new-instance v8, Landroid/net/http/SslError;

    invoke-direct {v8, v13, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 187
    .end local v1    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v7    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v7, p0, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 196
    .end local v7    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    .restart local v1    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_4
    invoke-static {v3}, Landroid/net/http/CertificateChainValidator;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 198
    const-string v8, "browser_module"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    new-instance v8, Landroid/net/http/SslError;

    invoke-direct {v8, v13, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 202
    :cond_5
    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 203
    const-string v11, "is revoked"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "Certificate revocation after"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 206
    :cond_6
    const-string v11, "browser_module"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v11, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    const/16 v9, -0xce

    new-instance v10, Landroid/net/http/SslCertificate;

    invoke-direct {v10, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-static {v9, v10, v8}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto :goto_1

    .line 211
    :cond_7
    const-string v9, "OCSP check failed!"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Certificate status could not be determined."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "CRL distribution point extension could not be read"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Distribution points could not be read."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "No valid CRL found."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Unable to get CRL for certificate"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 219
    :cond_8
    const-string v9, "browser_module"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v11, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    const/16 v9, -0xcd

    new-instance v10, Landroid/net/http/SslCertificate;

    invoke-direct {v10, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-static {v9, v10, v8}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto/16 :goto_1

    .line 226
    :cond_9
    const-string v8, "browser_module"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    new-instance v8, Landroid/net/http/SslError;

    invoke-direct {v8, v13, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .param p1, "connection"    # Landroid/net/http/HttpsConnection;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 84
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 92
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 93
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 97
    .restart local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 98
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 99
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
