.class public Lcom/android/server/ssrm/AESEncryption;
.super Ljava/lang/Object;
.source "AESEncryption.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static LOGTAG:Ljava/lang/String; = null

.field private static final PBE_ITERATION_COUNT:I = 0x64

.field private static final PBE_KEY_LENGTH:I = 0x80

.field private static final SECRET_KEY_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static iv:[B

.field private static salt:Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/AESEncryption;->salt:Ljava/lang/String;

    .line 53
    const-class v0, Lcom/android/server/ssrm/AESEncryption;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/AESEncryption;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/android/server/ssrm/AESEncryption;->generateIV()[B

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/AESEncryption;->iv:[B

    .line 58
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/android/server/ssrm/AESEncryption;->salt:Ljava/lang/String;

    .line 60
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iput-object v2, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    iput-object v2, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    goto :goto_0
.end method

.method private generateIV()[B
    .locals 3

    .prologue
    .line 115
    const/16 v2, 0x10

    :try_start_0
    new-array v1, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "passcode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v3

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "decrypted":[B
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/android/server/ssrm/AESEncryption;->iv:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 105
    .local v2, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v4, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 106
    iget-object v4, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v2    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "passcode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v2, v4

    .line 95
    :goto_0
    return-object v2

    .line 85
    :cond_1
    const/4 v1, 0x0

    .line 86
    .local v1, "encrypted":[B
    const/4 v2, 0x0

    .line 88
    .local v2, "encrypted64":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/android/server/ssrm/AESEncryption;->iv:[B

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 89
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v5, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 90
    iget-object v5, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 91
    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 92
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v4

    .line 93
    goto :goto_0
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/AESEncryption;->salt:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0x64

    const/16 v8, 0x80

    invoke-direct {v2, v5, v6, v7, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 72
    .local v2, "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v5, "PBKDF2WithHmacSHA1"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 73
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 74
    .local v4, "tmp":Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v4    # "tmp":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
