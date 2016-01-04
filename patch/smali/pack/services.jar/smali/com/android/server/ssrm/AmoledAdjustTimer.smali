.class public final Lcom/android/server/ssrm/AmoledAdjustTimer;
.super Ljava/lang/Object;
.source "AmoledAdjustTimer.java"


# static fields
.field private static currTemp:I

.field private static lastValue:I

.field private static prevTemp:I

.field private static sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;


# instance fields
.field final INPUT_PATH:Ljava/lang/String;

.field final OUTPUT_PATH:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field TEMP_TABLE:[I

.field currentTempFile:Ljava/io/File;

.field mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field mInputPathExist:Z

.field mOutputPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    .line 136
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    .line 138
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    .line 140
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v9, "AmoledAdjustTimer"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TAG:Ljava/lang/String;

    .line 32
    new-instance v9, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v9}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    .line 43
    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    .line 45
    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    .line 47
    const-string v9, "/sys/class/power_supply/battery/temp"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->INPUT_PATH:Ljava/lang/String;

    .line 49
    const-string v9, "/sys/class/lcd/panel/temperature"

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->OUTPUT_PATH:Ljava/lang/String;

    .line 106
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    .line 173
    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/power_supply/battery/temp"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "a":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/sys/class/lcd/panel/temperature"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "b":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_1
    iput-boolean v10, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    .line 58
    iget-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-nez v9, :cond_4

    .line 59
    :cond_0
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mOutputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v9, v11

    .line 55
    goto :goto_0

    :cond_3
    move v10, v11

    .line 56
    goto :goto_1

    .line 65
    :cond_4
    const/4 v4, 0x0

    .line 66
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 68
    .local v7, "str":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/class/lcd/panel/temperature"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    if-eqz v5, :cond_5

    .line 78
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_3
    move-object v4, v5

    .line 85
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_9

    .line 86
    :cond_7
    const-string v9, "AmoledAdjustTimer"

    const-string v10, "failed to read /sys/class/lcd/panel/temperature"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    goto :goto_2

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    if-eqz v4, :cond_6

    .line 78
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 79
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 73
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 74
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    if-eqz v4, :cond_6

    .line 78
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 79
    :catch_3
    move-exception v2

    goto :goto_6

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v4, :cond_8

    .line 78
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 76
    :cond_8
    :goto_9
    throw v9

    .line 92
    :cond_9
    const/4 v6, 0x0

    .line 93
    .local v6, "len":I
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v8, "tokens":Ljava/util/StringTokenizer;
    :goto_a
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_a

    .line 98
    :cond_a
    new-array v9, v6, [I

    iput-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    .line 99
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8    # "tokens":Ljava/util/StringTokenizer;
    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .restart local v8    # "tokens":Ljava/util/StringTokenizer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 101
    iget-object v9, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v3

    .line 102
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEMP_TABLE["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 79
    .end local v3    # "i":I
    .end local v6    # "len":I
    .end local v8    # "tokens":Ljava/util/StringTokenizer;
    :catch_4
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_8

    .line 73
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_7

    .line 71
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method private getCurrentTemp()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v6, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    iget-object v6, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v6}, Lcom/android/server/ssrm/DevSysProperty;->getBatteryTemperature()I

    move-result v2

    .line 181
    .local v2, "devTemp":I
    const/16 v6, -0x3e7

    if-ne v2, v6, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/power_supply/battery/temp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 197
    .end local v2    # "devTemp":I
    if-eqz v1, :cond_0

    .line 198
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "devTemp":I
    :cond_2
    if-eqz v1, :cond_3

    .line 198
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_1
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    move v2, v5

    .line 205
    goto :goto_0

    .line 193
    :catch_1
    move-exception v3

    .line 194
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 200
    :catch_2
    move-exception v3

    .line 201
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 196
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 197
    :goto_4
    if-eqz v0, :cond_5

    .line 198
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 196
    :cond_5
    :goto_5
    throw v5

    .line 200
    :catch_3
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 200
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 193
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/ssrm/AmoledAdjustTimer;

    invoke-direct {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->sInstance:Lcom/android/server/ssrm/AmoledAdjustTimer;

    return-object v0
.end method


# virtual methods
.method getStepByTemp(I)I
    .locals 2
    .param p1, "temp"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-ge p1, v1, :cond_1

    .line 115
    :cond_0
    return v0

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getStepByTemp2(I)I
    .locals 2
    .param p1, "temp"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-gt p1, v1, :cond_1

    .line 125
    :cond_0
    return v0

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getTempByStep(I)I
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public update()V
    .locals 7

    .prologue
    .line 143
    iget-boolean v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    if-nez v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getCurrentTemp()I

    move-result v3

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    .line 149
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v2

    .line 150
    .local v2, "prevStep":I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v0

    .line 152
    .local v0, "currStep":I
    const-string v3, "AmoledAdjustTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prevStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-le v2, v0, :cond_4

    .line 155
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp2(I)I

    move-result v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    .line 158
    .local v1, "newValue":I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_2

    .line 159
    const-string v3, "AmoledAdjustTimer"

    const-string v4, "/sys/class/lcd/panel/temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    .line 170
    .end local v1    # "newValue":I
    :cond_3
    :goto_1
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    goto :goto_0

    .line 162
    :cond_4
    if-ge v2, v0, :cond_3

    .line 163
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    .line 164
    .restart local v1    # "newValue":I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_5

    .line 165
    const-string v3, "AmoledAdjustTimer"

    const-string v4, "/sys/class/lcd/panel/temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_5
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    goto :goto_1
.end method
