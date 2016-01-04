.class public Lcom/sec/android/service/sm/util/FipsStatus;
.super Ljava/lang/Object;
.source "FipsStatus.java"


# static fields
.field public static final CRYPTO_PROC_PATH:Ljava/lang/String; = "/proc/sys/crypto"

.field public static final FIPS_STATUS_FILE:Ljava/lang/String; = "fips_status"

.field public static final IN_FIPS_ERROR:I = 0x1

.field public static final NOT_IN_FIPS_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SMS[Fips]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFipsStatus()I
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 26
    new-instance v3, Ljava/io/File;

    const-string v8, "/proc/sys/crypto"

    const-string v9, "fips_status"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v3, "fipsStatus":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "status":Ljava/lang/String;
    const/4 v5, 0x1

    .line 35
    .local v5, "result":I
    if-eqz v6, :cond_4

    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-lez v8, :cond_4

    .line 38
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-nez v8, :cond_1

    const/4 v5, 0x0

    .line 43
    :goto_0
    :try_start_3
    const-string v8, "SMS[Fips]"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FipsStatus: getFipsStatus="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 65
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "result":I
    .end local v6    # "status":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "result":I
    .restart local v6    # "status":Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "SMS[Fips]"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FipsStatus: exception while parsing status="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 41
    const/4 v5, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 56
    .local v4, "ioe":Ljava/io/IOException;
    const-string v7, "SMS[Fips]"

    const-string v8, "FipsStatus: close exception"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 47
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "result":I
    .end local v6    # "status":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: status file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 53
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 64
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: returning with not in fip error"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 65
    goto :goto_1

    .line 55
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 49
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: exception while reading status file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 53
    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 55
    :catch_5
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 53
    :goto_5
    if-eqz v0, :cond_3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 58
    :cond_3
    :goto_6
    throw v7

    .line 55
    :catch_6
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 53
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "result":I
    .restart local v6    # "status":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_2

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    .line 55
    :catch_7
    move-exception v4

    .line 56
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: close exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 60
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "result":I
    .end local v6    # "status":Ljava/lang/String;
    :cond_5
    const-string v8, "SMS[Fips]"

    const-string v9, "FipsStatus: getFipsStatus: unable to read status file"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 51
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 49
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 47
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method
