.class public Lcom/android/server/pm/PersonaIdentificationGenerator;
.super Ljava/lang/Object;
.source "PersonaIdentificationGenerator.java"


# static fields
.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/data/idkey"

.field private static final TAG:Ljava/lang/String; = "PersonaIdentificationGenerator"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "uniqueIdKey"

.field private static final VERSION:Ljava/lang/String; = "01"


# instance fields
.field private final mCryptoScheme:Ljava/lang/String;

.field private final mDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "cryptoScheme"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "need to provide a valid crypto scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    .line 61
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get hash checksum provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "plain"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 105
    .local v3, "key":Ljavax/crypto/SecretKey;
    if-eqz v3, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 107
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 109
    .local v2, "encryptedBytes":[B
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 111
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedBytes":[B
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing key for persona id encryption"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 113
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing encryption algorithm"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 115
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "invalid key"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 117
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 118
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "illegal block size"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 119
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v1

    .line 120
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "bad padding exception"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v1

    .line 122
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing padding scheme"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljavax/crypto/SecretKey;
    .locals 15

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 136
    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 137
    .local v8, "mKeyStore":Ljava/security/KeyStore;
    new-instance v1, Ljava/io/File;

    const-string v11, "/data/idkey"

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .local v1, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 141
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 150
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v8, v4, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_1
    :try_start_2
    const-string/jumbo v11, "uniqueIdKey"

    invoke-virtual {v8, v11}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 174
    iget-object v11, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v11}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 175
    .local v2, "generator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 177
    .local v6, "key":Ljavax/crypto/SecretKey;
    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v6}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 178
    .local v7, "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    const-string/jumbo v11, "uniqueIdKey"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v7, v12}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 180
    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 181
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 186
    .end local v2    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v6    # "key":Ljavax/crypto/SecretKey;
    :goto_2
    invoke-virtual {v7}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 191
    if-eqz v4, :cond_0

    .line 192
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_0
    if-eqz v9, :cond_1

    .line 196
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 203
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v8    # "mKeyStore":Ljava/security/KeyStore;
    :cond_1
    :goto_3
    return-object v11

    .line 143
    .restart local v1    # "file":Ljava/io/File;
    .restart local v8    # "mKeyStore":Ljava/security/KeyStore;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_3

    .line 144
    const-string v11, "PersonaIdentificationGenerator"

    const-string v12, "Creating key file again..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 147
    :cond_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "ie":Ljava/io/IOException;
    :try_start_5
    const-string v11, "PersonaIdentificationGenerator"

    const-string v12, "io exception when getting key, removing file"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    if-eqz v9, :cond_d

    .line 155
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    const/4 v9, 0x0

    move-object v10, v9

    .line 158
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v4, :cond_4

    .line 159
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 160
    const/4 v4, 0x0

    .line 163
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_7

    .line 164
    const-string v11, "PersonaIdentificationGenerator"

    const-string v12, "failed to delete file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 165
    const/4 v11, 0x0

    .line 191
    if-eqz v4, :cond_5

    .line 192
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_5
    if-eqz v10, :cond_6

    .line 196
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_5
    move-object v9, v10

    .line 200
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 198
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    const-string v12, "PersonaIdentificationGenerator"

    const-string v13, "failed to close IO"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_8
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-direct {v9, v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 169
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_9
    invoke-virtual {v8, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 187
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "ie":Ljava/io/IOException;
    .end local v8    # "mKeyStore":Ljava/security/KeyStore;
    :catch_2
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string v11, "PersonaIdentificationGenerator"

    const-string v12, "failed to get secret key"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 191
    if-eqz v4, :cond_8

    .line 192
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_8
    if-eqz v9, :cond_9

    .line 196
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_7
    const/4 v11, 0x0

    goto :goto_3

    .line 183
    .restart local v1    # "file":Ljava/io/File;
    .restart local v8    # "mKeyStore":Ljava/security/KeyStore;
    :cond_a
    :try_start_c
    const-string/jumbo v11, "uniqueIdKey"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$SecretKeyEntry;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .restart local v7    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    goto/16 :goto_2

    .line 198
    :catch_3
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    const-string v12, "PersonaIdentificationGenerator"

    const-string v13, "failed to close IO"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 198
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v8    # "mKeyStore":Ljava/security/KeyStore;
    .local v0, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "PersonaIdentificationGenerator"

    const-string v12, "failed to close IO"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 191
    :goto_8
    if-eqz v4, :cond_b

    .line 192
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_b
    if-eqz v9, :cond_c

    .line 196
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 200
    :cond_c
    :goto_9
    throw v11

    .line 198
    :catch_5
    move-exception v0

    .line 199
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v12, "PersonaIdentificationGenerator"

    const-string v13, "failed to close IO"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "ie":Ljava/io/IOException;
    .restart local v8    # "mKeyStore":Ljava/security/KeyStore;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 187
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    :cond_d
    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "01"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "plainText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaIdentificationGenerator;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
