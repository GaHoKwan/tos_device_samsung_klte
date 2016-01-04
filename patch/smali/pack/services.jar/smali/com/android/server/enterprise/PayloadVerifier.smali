.class public Lcom/android/server/enterprise/PayloadVerifier;
.super Ljava/lang/Object;
.source "PayloadVerifier.java"


# static fields
.field private static final CLASSES_FILE:Ljava/lang/String; = "classes.dex"

.field public static final ENTERPRISE_PRELOAD_APK:Ljava/lang/String; = "com.sec.enterprise.permissions"

.field private static final LICENSE_FILE:Ljava/lang/String; = "license.dat"

.field private static final MANIFEST_FILE:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final PAYLOAD_BUNDLE_PATH:Ljava/lang/String; = "assets/payload/"

.field private static final PAYLOAD_FILE:Ljava/lang/String; = "sec.android.payload"

.field private static final RESOURCES_FILE:Ljava/lang/String; = "resources.arsc"

.field private static final SPKPath:Ljava/lang/String; = "/data/system/enterprise/vpkp"

.field private static final TAG:Ljava/lang/String; = "PayloadVerifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    const/4 v3, 0x0

    .line 480
    .local v3, "enterprisePkg":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 482
    .local v0, "adminPkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.enterprise.permissions"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 492
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_2

    .line 495
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 496
    .local v6, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v8, v1, v4

    .line 497
    .local v8, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 487
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 500
    .local v7, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v8, v1, v4

    .line 501
    .restart local v8    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 504
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 505
    const/4 v9, 0x1

    .line 509
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v7    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :goto_3
    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static extractLicense(Ljava/lang/String;)[B
    .locals 10
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 262
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string v7, "assets/payload/license.dat"

    invoke-virtual {v3, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 265
    .local v5, "je":Ljava/util/jar/JarEntry;
    if-nez v5, :cond_2

    .line 266
    const/4 v7, 0x0

    new-array v0, v7, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    if-eqz v4, :cond_0

    .line 278
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 283
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 284
    :try_start_3
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v2, v3

    .line 289
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    :goto_2
    return-object v0

    .line 267
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    long-to-int v6, v7

    .line 268
    .local v6, "size":I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 269
    new-array v0, v6, [B

    .line 270
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    .line 277
    if-eqz v4, :cond_3

    .line 278
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 283
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 284
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_4
    :goto_4
    move-object v2, v3

    .line 272
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .line 273
    .end local v0    # "buf":[B
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 277
    if-eqz v4, :cond_5

    .line 278
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 284
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 289
    :cond_6
    :goto_7
    new-array v0, v9, [B

    goto :goto_2

    .line 276
    :catchall_0
    move-exception v7

    .line 277
    :goto_8
    if-eqz v4, :cond_7

    .line 278
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 283
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    .line 284
    :try_start_b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 276
    :cond_8
    :goto_a
    throw v7

    .line 279
    :catch_1
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 285
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 285
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :catch_5
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v6    # "size":I
    :catch_7
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 285
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 276
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_8

    .line 273
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_5
.end method

.method private static extractPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 222
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 225
    .local v5, "je":Ljava/util/jar/JarEntry;
    if-nez v5, :cond_3

    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 228
    if-nez v5, :cond_3

    .line 243
    if-eqz v4, :cond_0

    .line 244
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 249
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 250
    :try_start_3
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v2, v3

    .line 255
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    :cond_2
    :goto_2
    return-object v7

    .line 232
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    .line 233
    .local v6, "size":I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 234
    new-array v0, v6, [B

    .line 235
    .local v0, "buf":[B
    if-eqz v4, :cond_4

    .line 236
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 238
    :cond_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 243
    if-eqz v4, :cond_5

    .line 244
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 249
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 250
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_6
    :goto_4
    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    move-object v7, v8

    .line 238
    goto :goto_2

    .line 239
    .end local v0    # "buf":[B
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 243
    if-eqz v4, :cond_7

    .line 244
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 249
    :cond_7
    :goto_6
    if-eqz v2, :cond_2

    .line 250
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 251
    :catch_1
    move-exception v1

    .line 252
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 243
    :goto_7
    if-eqz v4, :cond_8

    .line 244
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 249
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 250
    :try_start_b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 242
    :cond_9
    :goto_9
    throw v7

    .line 245
    :catch_2
    move-exception v1

    .line 246
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 245
    :catch_4
    move-exception v1

    .line 246
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 245
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :catch_5
    move-exception v1

    .line 246
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 245
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v6    # "size":I
    :catch_7
    move-exception v1

    .line 246
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v7, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v7, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 242
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_7

    .line 239
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_5
.end method

.method private static getFileData([BILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "buf"    # [B
    .param p1, "bufSize"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "apkFile"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 166
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v4, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 168
    .local v6, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-int v2, v8

    .line 169
    .local v2, "entrySize":I
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 172
    move v0, p1

    .line 173
    .local v0, "count":I
    const/4 v7, 0x0

    .line 176
    .local v7, "readSize":I
    :cond_0
    sub-int v8, v0, p1

    sub-int v8, v2, v8

    invoke-virtual {v5, p0, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 177
    add-int/2addr v0, v7

    .line 178
    if-gtz v7, :cond_0

    .line 179
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total read size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    if-eqz v5, :cond_1

    .line 188
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 193
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 194
    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 199
    .end local v0    # "count":I
    .end local v2    # "entrySize":I
    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "readSize":I
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :goto_2
    return v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 184
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Check private key"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    if-eqz v5, :cond_3

    .line 188
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 194
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 199
    :cond_4
    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    .line 186
    :catchall_0
    move-exception v8

    .line 187
    :goto_6
    if-eqz v5, :cond_5

    .line 188
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 193
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 194
    :try_start_8
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 186
    :cond_6
    :goto_8
    throw v8

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "count":I
    .restart local v2    # "entrySize":I
    .restart local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "je":Ljava/util/jar/JarEntry;
    .restart local v7    # "readSize":I
    :catch_5
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entrySize":I
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "readSize":I
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_6

    .line 182
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_3
.end method

.method private static getFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "apkFile"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 123
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v4, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 125
    .local v6, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    long-to-int v8, v9

    .line 126
    .local v8, "total_size":I
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 128
    new-array v0, v8, [B

    .line 129
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 130
    .local v1, "count":I
    const/4 v7, 0x0

    .line 132
    .local v7, "read_size":I
    :cond_0
    sub-int v9, v8, v1

    invoke-virtual {v5, v0, v1, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 133
    add-int/2addr v1, v7

    .line 138
    if-gtz v7, :cond_0

    .line 140
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total read size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    if-eqz v5, :cond_1

    .line 148
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 153
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 154
    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 159
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "read_size":I
    .end local v8    # "total_size":I
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :goto_2
    return-object v0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v9, "PayloadVerifier"

    const-string v10, "Check private key"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    if-eqz v5, :cond_3

    .line 148
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 154
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 159
    :cond_4
    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    .line 146
    :catchall_0
    move-exception v9

    .line 147
    :goto_6
    if-eqz v5, :cond_5

    .line 148
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 153
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 154
    :try_start_8
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 146
    :cond_6
    :goto_8
    throw v9

    .line 149
    :catch_1
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "PayloadVerifier"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "PayloadVerifier"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    .restart local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "je":Ljava/util/jar/JarEntry;
    .restart local v7    # "read_size":I
    .restart local v8    # "total_size":I
    :catch_5
    move-exception v2

    .line 150
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "read_size":I
    .end local v8    # "total_size":I
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_6

    .line 142
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_3
.end method

.method private static getFileSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "apkFile"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v2, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    .line 207
    .local v3, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    long-to-int v4, v5

    .line 208
    .local v4, "total_size":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getFileSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 215
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v3    # "je":Ljava/util/jar/JarEntry;
    .end local v4    # "total_size":I
    .restart local v1    # "ipJarFile":Ljava/util/jar/JarFile;
    :goto_0
    return v4

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 213
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Check private key"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    const/4 v4, 0x0

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v1    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_1
.end method

.method public static getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 465
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 466
    .local v1, "end":I
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 468
    .local v2, "start":I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 469
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 473
    :goto_0
    return-object v3

    .line 471
    :cond_0
    const-string v3, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "null"

    goto :goto_0
.end method

.method private static declared-synchronized getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 428
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "path":Ljava/lang/String;
    const-string v2, "PayloadVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 434
    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 428
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static varargs joinBytes([[B)[B
    .locals 8
    .param p0, "bytes"    # [[B

    .prologue
    .line 106
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p0

    .local v0, "arr$":[[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 108
    .local v1, "b":[B
    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    .line 107
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "PayloadVerifier"

    const-string v7, ""

    invoke-static {v6, v7, v3}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 116
    .end local v1    # "b":[B
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 7
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 74
    const/4 v1, 0x0

    .line 78
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p2

    invoke-virtual {v2, p2, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 82
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 95
    :cond_1
    if-eqz v2, :cond_2

    .line 96
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_0
    move-object v1, v2

    .line 102
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-object v3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "PayloadVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v1, :cond_3

    .line 96
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    :goto_3
    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_5
    const-string v4, "PayloadVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    if-eqz v1, :cond_3

    .line 96
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 98
    :catch_3
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    goto :goto_3

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 95
    :goto_5
    if-eqz v1, :cond_4

    .line 96
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 94
    :cond_4
    :goto_6
    throw v3

    .line 98
    :catch_4
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 88
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 83
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public static declared-synchronized removeStoredPublicKeyPath(Ljava/lang/String;)V
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 457
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "path":Ljava/lang/String;
    const-string v2, "PayloadVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_0
    monitor-exit v3

    return-void

    .line 457
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "toApkPath"    # Ljava/lang/String;
    .param p1, "fromApkPath"    # Ljava/lang/String;

    .prologue
    .line 439
    const-class v5, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "path":Ljava/lang/String;
    const-string v4, "PayloadVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/vpkp/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v3, "to":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 444
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 447
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .local v1, "from":Ljava/io/File;
    :try_start_1
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :goto_0
    monitor-exit v5

    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "PayloadVerifier"

    const-string v6, ""

    invoke-static {v4, v6, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 439
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "from":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "to":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static verify(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "enterpriseApkPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 370
    .local v5, "storedEnterpriseApkPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 373
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 376
    :try_start_0
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 377
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_1

    .line 383
    const-string v7, "PayloadVerifier"

    const-string v8, "Enterprise APK Path is NULL , cannot proceed with payload verification."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 421
    :cond_0
    :goto_1
    return v4

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PayloadVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v4, 0x0

    .line 390
    .local v4, "result":Z
    if-eqz v5, :cond_2

    .line 391
    :try_start_1
    const-string v7, "PayloadVerifier"

    const-string v8, "USING STORED PUBLIC KEY"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {v5, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 400
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 401
    :try_start_2
    const-string v7, "PayloadVerifier"

    const-string v8, "USING FIXED PUBLIC KEY"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    .line 403
    invoke-static {v1, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 404
    if-eqz v4, :cond_3

    .line 405
    invoke-static {p0, v1}, Lcom/android/server/enterprise/PayloadVerifier;->setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 413
    :cond_3
    if-nez v4, :cond_0

    .line 414
    :try_start_3
    const-string v7, "PayloadVerifier"

    const-string v8, "COMPARING ENTERPRISE SIGNATURE"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {p0, p1}, Lcom/android/server/enterprise/PayloadVerifier;->compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_1

    .line 394
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    const/4 v4, 0x0

    goto :goto_2

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v6

    .line 409
    goto :goto_1

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "PayloadVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 419
    goto :goto_1
.end method

.method private static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "enterpriseApkPath"    # Ljava/lang/String;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v7, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 318
    .local v7, "jarFile":Ljava/util/jar/JarFile;
    const/16 v14, 0x2000

    new-array v10, v14, [B

    .line 319
    .local v10, "readBuffer":[B
    const-string v14, "AndroidManifest.xml"

    invoke-virtual {v7, v14}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v14

    invoke-static {v7, v14, v10}, Lcom/android/server/enterprise/PayloadVerifier;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 322
    .local v2, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 324
    if-nez v2, :cond_0

    .line 325
    const/4 v14, 0x0

    .line 363
    :goto_0
    return v14

    .line 329
    :cond_0
    const-string v14, "AndroidManifest.xml"

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 330
    .local v9, "manifestSize":I
    const-string v14, "classes.dex"

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 331
    .local v3, "classesSize":I
    const-string v14, "resources.arsc"

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 333
    .local v11, "rsrcSize":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/PayloadVerifier;->extractLicense(Ljava/lang/String;)[B

    move-result-object v8

    .line 334
    .local v8, "licenseData":[B
    add-int v14, v9, v3

    add-int/2addr v14, v11

    array-length v15, v8

    add-int v13, v14, v15

    .line 335
    .local v13, "totalDataSize":I
    new-array v12, v13, [B

    .line 336
    .local v12, "totalData":[B
    const/4 v14, 0x0

    const-string v15, "AndroidManifest.xml"

    move-object/from16 v0, p1

    invoke-static {v12, v14, v15, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData([BILjava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v14, "classes.dex"

    move-object/from16 v0, p1

    invoke-static {v12, v9, v14, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData([BILjava/lang/String;Ljava/lang/String;)I

    .line 338
    add-int v14, v9, v3

    const-string v15, "resources.arsc"

    move-object/from16 v0, p1

    invoke-static {v12, v14, v15, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData([BILjava/lang/String;Ljava/lang/String;)I

    .line 339
    array-length v14, v8

    if-lez v14, :cond_1

    .line 340
    const/4 v14, 0x0

    array-length v15, v8

    invoke-static {v8, v14, v12, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_1
    const/4 v14, 0x0

    aget-object v1, v2, v14

    .line 343
    .local v1, "cert":Ljava/security/cert/Certificate;
    const/4 v6, 0x1

    .line 344
    .local v6, "index":I
    const/4 v5, 0x0

    .line 346
    .local v5, "extractedb64Signature":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/server/enterprise/PayloadVerifier;->extractPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 347
    const-string v14, "PayloadVerifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Extracted Payload("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") Size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v14, "PayloadVerifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Extracted Payload("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v14, 0x0

    invoke-static {v5, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 351
    .local v4, "extractedSignature":[B
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-static {v12, v4, v14}, Lcom/android/server/enterprise/PayloadVerifier;->verify([B[BLjava/security/PublicKey;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 352
    const-string v14, "PayloadVerifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Signature Verification SUCCESS for Payload("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 355
    :cond_2
    const-string v14, "PayloadVerifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Signature Verification FAILURE for Payload("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    add-int/lit8 v6, v6, 0x1

    .line 358
    goto/16 :goto_1

    .line 360
    .end local v4    # "extractedSignature":[B
    :cond_3
    if-nez v5, :cond_4

    .line 361
    const-string v14, "PayloadVerifier"

    const-string v15, "No more payloads"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private static verify([B[BLjava/security/PublicKey;)Z
    .locals 5
    .param p0, "data"    # [B
    .param p1, "inSignature"    # [B
    .param p2, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 299
    .local v1, "ret":Z
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 300
    .local v2, "verify":Ljava/security/Signature;
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 301
    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 302
    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 312
    .end local v2    # "verify":Ljava/security/Signature;
    :goto_0
    return v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 308
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
