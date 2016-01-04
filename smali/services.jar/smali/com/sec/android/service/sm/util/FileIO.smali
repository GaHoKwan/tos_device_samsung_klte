.class public Lcom/sec/android/service/sm/util/FileIO;
.super Ljava/lang/Object;
.source "FileIO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static getLineInFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 49
    .local v0, "bf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .local v1, "bf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 55
    if-eqz v1, :cond_2

    .line 56
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 61
    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v3

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read fail : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v2

    .line 58
    const-string v4, "close fail"

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 55
    :goto_2
    if-eqz v0, :cond_1

    .line 56
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 60
    :cond_1
    :goto_3
    throw v4

    .line 57
    :catch_2
    move-exception v2

    .line 58
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "close fail"

    invoke-static {v5}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 57
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 58
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "close fail"

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    move-object v0, v1

    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 53
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .restart local v1    # "bf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 51
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .restart local v1    # "bf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getLineInFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v3, 0x0

    .line 28
    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 30
    .local v0, "bf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .local v1, "bf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 36
    if-eqz v1, :cond_2

    .line 37
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 42
    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v3

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read fail : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v2

    .line 39
    const-string v4, "close fail"

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 34
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 36
    :goto_2
    if-eqz v0, :cond_1

    .line 37
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 41
    :cond_1
    :goto_3
    throw v4

    .line 38
    :catch_2
    move-exception v2

    .line 39
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "close fail"

    invoke-static {v5}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 38
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 39
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "close fail"

    invoke-static {v4}, Lcom/sec/android/service/sm/util/Log;->e(Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    move-object v0, v1

    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 34
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .restart local v1    # "bf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 32
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .restart local v1    # "bf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bf":Ljava/io/BufferedReader;
    .restart local v0    # "bf":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static printStackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v3, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 71
    .local v0, "element":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v4, :cond_0

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0    # "element":[Ljava/lang/StackTraceElement;
    .end local v2    # "idx":I
    :goto_1
    return-object v4

    .line 72
    .restart local v0    # "element":[Ljava/lang/StackTraceElement;
    .restart local v2    # "idx":I
    :cond_0
    :try_start_1
    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "element":[Ljava/lang/StackTraceElement;
    .end local v2    # "idx":I
    :catch_0
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static writeFlagInFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 15
    .local v1, "fileWriter":Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    .local v2, "outStream":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 17
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 19
    return-void
.end method
