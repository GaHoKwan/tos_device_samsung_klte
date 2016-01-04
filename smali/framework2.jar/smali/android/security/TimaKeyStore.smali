.class public Landroid/security/TimaKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "TimaKeyStore.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "TimaKeyStore"


# instance fields
.field private defaultpassword:[C

.field private mKeyStore:Landroid/security/KeyStore;

.field private mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 95
    const-string/jumbo v0, "timakeystore"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/security/TimaKeyStore;->defaultpassword:[C

    return-void
.end method

.method private checkDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v0, p1}, Landroid/security/TimaKeyStoreWrapper;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/TimaKeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 815
    :cond_1
    return-void
.end method

.method public static deserialize([B)Ljavax/crypto/SecretKey;
    .locals 10
    .param p0, "seal_key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 340
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 342
    .local v2, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "format":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "algorithm":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v4, v7, [B

    .line 347
    .local v4, "enc":[B
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 349
    const-string v7, "PKCS#8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "PKCS8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 351
    :cond_0
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 367
    .local v6, "spec":Ljava/security/spec/KeySpec;
    :goto_0
    :try_start_0
    const-string v7, "BC"

    invoke-static {v0, v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .end local v6    # "spec":Ljava/security/spec/KeySpec;
    :goto_1
    return-object v7

    .line 353
    :cond_1
    const-string v7, "X.509"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "X509"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 355
    :cond_2
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .restart local v6    # "spec":Ljava/security/spec/KeySpec;
    goto :goto_0

    .line 357
    .end local v6    # "spec":Ljava/security/spec/KeySpec;
    :cond_3
    const-string v7, "RAW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 359
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_4
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not recognised!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 368
    .restart local v6    # "spec":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v3

    .line 369
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception deserialize key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, -0x1

    .line 214
    iget-object v2, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v2, p1}, Landroid/security/TimaKeyStoreWrapper;->getmtime(Ljava/lang/String;)J

    move-result-wide v0

    .line 215
    .local v0, "epochMillis":J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;)J

    move-result-wide v0

    .line 217
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 218
    const/4 v2, 0x0

    .line 221
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x5f

    .line 552
    iget-object v8, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 553
    .local v6, "rawAliasesAndroidKeyStore":[Ljava/lang/String;
    iget-object v8, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/security/TimaKeyStoreWrapper;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, "rawAliasesTimaKeyStore":[Ljava/lang/String;
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 557
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 591
    :cond_0
    return-object v1

    .line 558
    :cond_1
    if-nez v6, :cond_3

    .line 559
    new-instance v1, Ljava/util/HashSet;

    array-length v8, v7

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 566
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-eqz v6, :cond_6

    .line 567
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_6

    aget-object v0, v2, v3

    .line 568
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 569
    .local v4, "idx":I
    if-eq v4, v12, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v4, :cond_5

    .line 570
    :cond_2
    const-string v8, "TimaKeyStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid alias: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 560
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "idx":I
    .end local v5    # "len$":I
    :cond_3
    if-nez v7, :cond_4

    .line 561
    new-instance v1, Ljava/util/HashSet;

    array-length v8, v6

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(I)V

    .restart local v1    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 563
    .end local v1    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    array-length v8, v6

    array-length v9, v7

    add-int/2addr v8, v9

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(I)V

    .restart local v1    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 574
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "idx":I
    .restart local v5    # "len$":I
    :cond_5
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 577
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "idx":I
    .end local v5    # "len$":I
    :cond_6
    if-eqz v7, :cond_0

    .line 578
    move-object v2, v7

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v5, v2

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 579
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 580
    .restart local v4    # "idx":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 581
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 582
    if-eq v4, v12, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v4, :cond_8

    .line 583
    :cond_7
    const-string v8, "TimaKeyStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid alias: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 587
    :cond_8
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v0, p1}, Landroid/security/TimaKeyStoreWrapper;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static serialize(Ljavax/crypto/SecretKey;)[B
    .locals 4
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 325
    .local v2, "enc":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 326
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    .local v1, "dOut":Ljava/io/DataOutputStream;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 329
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 330
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 331
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 332
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 334
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Landroid/security/KeyStoreParameter;)V
    .locals 22
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "params"    # Landroid/security/KeyStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v10, 0x0

    .line 378
    .local v10, "keyBytes":[B
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v19, p2

    .line 379
    check-cast v19, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface/range {v19 .. v19}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v14

    .line 385
    .local v14, "pkeyAlias":Ljava/lang/String;
    :goto_0
    if-eqz v14, :cond_3

    const-string v19, "USRPKEY_"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 386
    const-string v19, "USRPKEY_"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, "keySubalias":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 388
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can only replace keys with same alias: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " != "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 381
    .end local v12    # "keySubalias":Ljava/lang/String;
    .end local v14    # "pkeyAlias":Ljava/lang/String;
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "pkeyAlias":Ljava/lang/String;
    goto :goto_0

    .line 392
    .restart local v12    # "keySubalias":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    .line 411
    .end local v12    # "keySubalias":Ljava/lang/String;
    .local v15, "shouldReplacePrivateKey":Z
    :goto_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 412
    :cond_2
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Must supply at least one Certificate with PrivateKey"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 395
    .end local v15    # "shouldReplacePrivateKey":Z
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, "keyFormat":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string v19, "PKCS#8"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 397
    :cond_4
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Only PrivateKeys that can be encoded into PKCS#8 are supported"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 402
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v10

    .line 403
    if-nez v10, :cond_6

    .line 404
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "PrivateKey has no encoding"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 407
    :cond_6
    const/4 v15, 0x1

    .restart local v15    # "shouldReplacePrivateKey":Z
    goto :goto_1

    .line 416
    .end local v11    # "keyFormat":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    .line 417
    .local v18, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    .line 418
    const-string v19, "X.509"

    aget-object v20, p3, v9

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 419
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 423
    :cond_8
    aget-object v19, p3, v9

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 424
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 428
    :cond_9
    aget-object v19, p3, v9

    check-cast v19, Ljava/security/cert/X509Certificate;

    aput-object v19, v18, v9

    .line 417
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 433
    :cond_a
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 444
    .local v17, "userCertBytes":[B
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 449
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    new-array v5, v0, [[B

    .line 450
    .local v5, "certsBytes":[[B
    const/16 v16, 0x0

    .line 451
    .local v16, "totalCertLength":I
    const/4 v9, 0x0

    :goto_3
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_b

    .line 453
    add-int/lit8 v19, v9, 0x1

    :try_start_1
    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v19

    aput-object v19, v5, v9

    .line 454
    aget-object v19, v5, v9

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int v16, v16, v19

    .line 451
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 434
    .end local v5    # "certsBytes":[[B
    .end local v16    # "totalCertLength":I
    .end local v17    # "userCertBytes":[B
    :catch_0
    move-exception v7

    .line 435
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t encode certificate #1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 455
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v5    # "certsBytes":[[B
    .restart local v16    # "totalCertLength":I
    .restart local v17    # "userCertBytes":[B
    :catch_1
    move-exception v7

    .line 456
    .restart local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can\'t encode Certificate #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 464
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_b
    move/from16 v0, v16

    new-array v6, v0, [B

    .line 465
    .local v6, "chainBytes":[B
    const/4 v13, 0x0

    .line 466
    .local v13, "outputOffset":I
    const/4 v9, 0x0

    :goto_4
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_d

    .line 467
    aget-object v19, v5, v9

    move-object/from16 v0, v19

    array-length v4, v0

    .line 468
    .local v4, "certLength":I
    aget-object v19, v5, v9

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v6, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    add-int/2addr v13, v4

    .line 470
    const/16 v19, 0x0

    aput-object v19, v5, v9

    .line 466
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 473
    .end local v4    # "certLength":I
    .end local v5    # "certsBytes":[[B
    .end local v6    # "chainBytes":[B
    .end local v13    # "outputOffset":I
    .end local v16    # "totalCertLength":I
    :cond_c
    const/4 v6, 0x0

    .line 480
    .restart local v6    # "chainBytes":[B
    :cond_d
    if-eqz v15, :cond_e

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 486
    :goto_5
    if-nez p4, :cond_f

    const/4 v8, 0x0

    .line 488
    .local v8, "flags":I
    :goto_6
    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USRPKEY_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v10, v2, v8}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v19

    if-nez v19, :cond_10

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 492
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t put private key in keystore"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 483
    .end local v8    # "flags":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    goto :goto_5

    .line 486
    :cond_f
    invoke-virtual/range {p4 .. p4}, Landroid/security/KeyStoreParameter;->getFlags()I

    move-result v8

    goto :goto_6

    .line 493
    .restart local v8    # "flags":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USRCERT_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v19

    if-nez v19, :cond_11

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 496
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t put certificate #1 in keystore"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 497
    :cond_11
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CACERT_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v19

    if-nez v19, :cond_12

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 501
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t put certificate chain in keystore"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 503
    :cond_12
    return-void
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;[C)V
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 288
    .local v1, "keyBytes":[B
    if-nez p1, :cond_0

    .line 289
    new-instance v4, Ljava/security/KeyStoreException;

    const-string v5, "alias == null"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_0
    instance-of v4, p2, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 292
    check-cast v4, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v4}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "skeyAlias":Ljava/lang/String;
    :goto_0
    const-string v4, "TimaKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v4, "TimaKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skeyAlias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez p3, :cond_1

    .line 299
    const-string v4, "TimaKeyStore"

    const-string/jumbo v5, "password is null, use default password"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p3, p0, Landroid/security/TimaKeyStore;->defaultpassword:[C

    .line 303
    :cond_1
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 304
    if-nez v1, :cond_3

    .line 305
    new-instance v4, Ljava/security/KeyStoreException;

    const-string v5, "SecretKey has no encoding"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    .end local v3    # "skeyAlias":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "skeyAlias":Ljava/lang/String;
    goto :goto_0

    .line 308
    :cond_3
    const/4 v2, 0x0

    .line 310
    .local v2, "serialized_key":[B
    :try_start_0
    invoke-static {p2}, Landroid/security/TimaKeyStore;->serialize(Ljavax/crypto/SecretKey;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 317
    iget-object v4, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    const/4 v5, -0x1

    invoke-virtual {v4, p1, v2, v5, p3}, Landroid/security/TimaKeyStoreWrapper;->put(Ljava/lang/String;[BI[C)I

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "put failed for SecretKey"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serialization error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 192
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 193
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "TimaKeyStore"

    const-string v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 205
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "TimaKeyStore"

    const-string v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/security/TimaKeyStore;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v0, p1}, Landroid/security/TimaKeyStoreWrapper;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v0, p1}, Landroid/security/TimaKeyStoreWrapper;->delete(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    const-string v0, "TimaKeyStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in TimaKeyStore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_2
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v0, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const-string v0, "TimaKeyStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in AndroidKeyStore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    iget-object v1, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 178
    .local v0, "certificate":[B
    if-eqz v0, :cond_1

    .line 179
    invoke-static {v0}, Landroid/security/TimaKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    .line 182
    :cond_1
    iget-object v1, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    invoke-static {v0}, Landroid/security/TimaKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 13
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v9, 0x0

    .line 645
    if-nez p1, :cond_0

    move-object v0, v9

    .line 698
    :goto_0
    return-object v0

    .line 649
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 657
    .local v8, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "certAliases":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 659
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    .line 660
    .local v0, "alias":Ljava/lang/String;
    iget-object v10, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 661
    .local v5, "certBytes":[B
    if-nez v5, :cond_2

    .line 659
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 665
    :cond_2
    invoke-static {v5}, Landroid/security/TimaKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 666
    .local v2, "c":Ljava/security/cert/Certificate;
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 678
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Ljava/security/cert/Certificate;
    .end local v5    # "certBytes":[B
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    iget-object v10, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "caAliases":[Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 680
    move-object v1, v3

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v0, v1, v6

    .line 681
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 680
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 685
    :cond_5
    iget-object v10, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 686
    .restart local v5    # "certBytes":[B
    if-eqz v5, :cond_4

    .line 690
    iget-object v10, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Landroid/security/TimaKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 692
    .restart local v2    # "c":Ljava/security/cert/Certificate;
    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Ljava/security/cert/Certificate;
    .end local v5    # "certBytes":[B
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    move-object v0, v9

    .line 698
    goto/16 :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/TimaKeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 145
    .local v6, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    .line 146
    const/4 v2, 0x0

    .line 168
    :goto_0
    return-object v2

    .line 151
    :cond_1
    iget-object v7, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    .local v0, "caBytes":[B
    if-eqz v0, :cond_2

    .line 153
    invoke-static {v0}, Landroid/security/TimaKeyStore;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    .line 155
    .local v1, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 157
    .local v2, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 158
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    .line 159
    .local v3, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 160
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 163
    .end local v1    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 166
    .restart local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    aput-object v6, v2, v7

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/TimaKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 231
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 244
    :goto_0
    return-object v1

    .line 235
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/TimaKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 237
    goto :goto_0

    .line 240
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/TimaKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 242
    goto :goto_0

    .line 244
    :cond_3
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v5, Ljava/security/UnrecoverableKeyException;

    const-string v6, "alias == null"

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    :cond_0
    iget-object v5, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v5, p1}, Landroid/security/TimaKeyStoreWrapper;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    if-nez p2, :cond_1

    .line 106
    const-string v5, "TimaKeyStore"

    const-string/jumbo v6, "password is null, use default password"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p2, p0, Landroid/security/TimaKeyStore;->defaultpassword:[C

    .line 110
    :cond_1
    iget-object v5, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v5, p1, p2}, Landroid/security/TimaKeyStoreWrapper;->get(Ljava/lang/String;[C)[B

    move-result-object v3

    .line 111
    .local v3, "serialized_key":[B
    if-nez v3, :cond_2

    .line 112
    new-instance v5, Ljava/security/UnrecoverableKeyException;

    const-string v6, "Unable to retreive key"

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_2
    const/4 v2, 0x0

    .line 117
    .local v2, "mSecretKey":Ljavax/crypto/SecretKey;
    :try_start_0
    invoke-static {v3}, Landroid/security/TimaKeyStore;->deserialize([B)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .end local v2    # "mSecretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "serialized_key":[B
    :goto_0
    return-object v2

    .line 118
    .restart local v2    # "mSecretKey":Ljavax/crypto/SecretKey;
    .restart local v3    # "serialized_key":[B
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/UnrecoverableKeyException;

    const-string v6, "deserialization problem"

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mSecretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "serialized_key":[B
    :cond_3
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 125
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    :cond_4
    const-string v5, "keystore"

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 130
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Can\'t get key"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "t":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 134
    throw v4
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 717
    .local v1, "isTimaKeystoreEnabled":Ljava/lang/Object;
    :try_start_0
    const-string v5, "com.sec.enterprise.knox.keystore.TimaKeystore"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 719
    .local v2, "keyStoreClass":Ljava/lang/Class;
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 721
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 723
    .local v3, "keyStorePolicyObj":Ljava/lang/Object;
    const-string v5, "isTimaKeystoreEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 725
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 733
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "isTimaKeystoreEnabled":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 734
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "TIMA Keystore is not enabled"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 727
    .end local v2    # "keyStoreClass":Ljava/lang/Class;
    .end local v3    # "keyStorePolicyObj":Ljava/lang/Object;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .restart local v1    # "isTimaKeystoreEnabled":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 729
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "Error calling isTimaKeystoreEnabled"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 737
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isTimaKeystoreEnabled":Ljava/lang/Object;
    .restart local v2    # "keyStoreClass":Ljava/lang/Class;
    .restart local v3    # "keyStorePolicyObj":Ljava/lang/Object;
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    .line 738
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "InputStream not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 741
    :cond_1
    if-eqz p2, :cond_2

    .line 742
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 746
    :cond_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    .line 748
    invoke-static {}, Landroid/security/TimaKeyStoreWrapper;->getInstance()Landroid/security/TimaKeyStoreWrapper;

    move-result-object v5

    iput-object v5, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    .line 749
    iget-object v5, p0, Landroid/security/TimaKeyStore;->mTimaKeyStore:Landroid/security/TimaKeyStoreWrapper;

    invoke-virtual {v5}, Landroid/security/TimaKeyStoreWrapper;->init()I

    .line 750
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_0
    if-nez p2, :cond_1

    .line 519
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 529
    .local v1, "encoded":[B
    iget-object v2, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 533
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "encoded":[B
    :cond_2
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 755
    if-nez p2, :cond_0

    .line 756
    new-instance v4, Ljava/security/KeyStoreException;

    const-string v5, "entry == null"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 759
    :cond_0
    if-nez p1, :cond_1

    .line 760
    new-instance v4, Ljava/security/KeyStoreException;

    const-string v5, "alias == null"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 763
    :cond_1
    instance-of v4, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v4, :cond_4

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "password":[C
    if-nez p3, :cond_2

    .line 766
    iget-object v0, p0, Landroid/security/TimaKeyStore;->defaultpassword:[C

    .line 776
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :goto_0
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->checkDeleteEntry(Ljava/lang/String;)V

    move-object v2, p2

    .line 777
    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 778
    .local v2, "seE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0}, Landroid/security/TimaKeyStore;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;[C)V

    .line 800
    .end local v0    # "password":[C
    .end local v2    # "seE":Ljava/security/KeyStore$SecretKeyEntry;
    :goto_1
    return-void

    .restart local v0    # "password":[C
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_2
    move-object v4, p3

    .line 768
    check-cast v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v4

    if-nez v4, :cond_3

    .line 769
    const-string v4, "TimaKeyStore"

    const-string/jumbo v5, "password is null, use default password"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Landroid/security/TimaKeyStore;->defaultpassword:[C

    goto :goto_0

    .line 772
    :cond_3
    check-cast p3, Ljava/security/KeyStore$PasswordProtection;

    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {p3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v0

    goto :goto_0

    .line 782
    .end local v0    # "password":[C
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4
    instance-of v4, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v4, :cond_5

    .line 783
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->checkDeleteEntry(Ljava/lang/String;)V

    move-object v3, p2

    .line 784
    check-cast v3, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 785
    .local v3, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v3}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/security/TimaKeyStore;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_1

    .line 789
    .end local v3    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_5
    if-eqz p3, :cond_6

    instance-of v4, p3, Landroid/security/KeyStoreParameter;

    if-nez v4, :cond_6

    .line 790
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "protParam should be android.security.KeyStoreParameter; was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 795
    :cond_6
    instance-of v4, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v4, :cond_7

    .line 796
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->checkDeleteEntry(Ljava/lang/String;)V

    move-object v1, p2

    .line 797
    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 798
    .local v1, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast p3, Landroid/security/KeyStoreParameter;

    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    invoke-direct {p0, p1, v4, v5, p3}, Landroid/security/TimaKeyStore;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Landroid/security/KeyStoreParameter;)V

    goto :goto_1

    .line 803
    .end local v1    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_7
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry must be a SecretKeyEntry or PrivateKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/TimaKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    .line 264
    :goto_0
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_4

    .line 265
    if-nez p3, :cond_2

    .line 266
    const-string v0, "TimaKeyStore"

    const-string/jumbo v1, "password is null, use default password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p3, p0, Landroid/security/TimaKeyStore;->defaultpassword:[C

    .line 269
    :cond_2
    check-cast p2, Ljavax/crypto/SecretKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, p3}, Landroid/security/TimaKeyStore;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;[C)V

    .line 280
    :goto_1
    return-void

    .line 261
    .restart local p2    # "key":Ljava/security/Key;
    :cond_3
    invoke-direct {p0, p1}, Landroid/security/TimaKeyStore;->checkDeleteEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_4
    if-eqz p3, :cond_5

    array-length v0, p3

    if-lez v0, :cond_5

    .line 272
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_5
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_6

    .line 275
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/security/TimaKeyStore;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Landroid/security/KeyStoreParameter;)V

    goto :goto_1

    .line 277
    .restart local p2    # "key":Ljava/security/Key;
    :cond_6
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only SecretKeys and PrivateKeys are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0}, Landroid/security/TimaKeyStore;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 704
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize TIMAKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
