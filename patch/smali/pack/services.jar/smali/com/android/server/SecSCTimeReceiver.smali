.class public Lcom/android/server/SecSCTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSCTimeReceiver.java"


# static fields
.field private static final DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

.field private static final DRM_TIME_PATH:Ljava/lang/String; = "/data/data/.drm/.sec_sctime/sec_sctime_beforeTime.ini"

.field private static final LIMIT_TIME:I = 0x7d0

.field private static final NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final TAG:Ljava/lang/String; = "SecSCTimeReceiver"

.field private static beforeBeforeTime:J

.field private static timeFormat:Ljava/lang/String;


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/android/server/ThreadSafeSimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Lcom/android/server/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    .line 74
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SecSCTimeReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecSCTimeReceiver;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SecSCTimeReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SecSCTimeReceiver;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleAutoTimeUpdation()V

    return-void
.end method

.method static synthetic access$200(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_nitzReceived(J)V

    return-void
.end method

.method static synthetic access$300()Lcom/android/server/ThreadSafeSimpleDateFormat;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    return-object v0
.end method

.method private getBeforeTime()J
    .locals 12

    .prologue
    const-wide/16 v7, -0x1

    .line 181
    const-wide/16 v0, 0x0

    .line 182
    .local v0, "beforeTime":J
    const/4 v2, 0x0

    .line 184
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/data/.drm/.sec_sctime/sec_sctime_beforeTime.ini"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 186
    .local v5, "nextLine":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 201
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 202
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    if-eqz v2, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 215
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    :goto_3
    move-wide v7, v0

    .line 218
    :goto_4
    return-wide v7

    .line 190
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_4
    const-string v9, "SecSCTimeReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 192
    sget-wide v9, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_3

    sget-wide v9, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    cmp-long v9, v9, v0

    if-nez v9, :cond_3

    .line 193
    const-string v9, "SecSCTimeReceiver"

    const-string v10, "returning because of double intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    if-eqz v3, :cond_2

    .line 212
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 215
    :cond_2
    :goto_5
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    move-object v2, v3

    .line 194
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 197
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_3
    :try_start_6
    const-string v7, "SecSCTimeReceiver"

    const-string v8, "proper beforetime so proceed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sput-wide v0, Lcom/android/server/SecSCTimeReceiver;->beforeBeforeTime:J

    .line 200
    const-string v7, "SecSCTimeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme in Long is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 210
    if-eqz v3, :cond_4

    .line 212
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 215
    :cond_4
    :goto_6
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    move-object v2, v3

    .line 216
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 203
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    const-string v7, "SecSCTimeReceiver"

    const-string v8, "Before time does not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 206
    const-wide/16 v7, -0x2

    .line 210
    if-eqz v2, :cond_5

    .line 212
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 215
    :cond_5
    :goto_8
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    goto/16 :goto_4

    .line 207
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 208
    .local v4, "e":Ljava/io/IOException;
    :goto_9
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 210
    if-eqz v2, :cond_0

    .line 212
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    .line 213
    :catch_3
    move-exception v7

    goto/16 :goto_2

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v2, :cond_6

    .line 212
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 215
    :cond_6
    :goto_b
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removebeforefile()V

    .line 210
    throw v7

    .line 213
    :catch_4
    move-exception v8

    goto :goto_b

    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v7

    goto/16 :goto_2

    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v9

    goto :goto_8

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_7
    move-exception v9

    goto :goto_5

    :catch_8
    move-exception v7

    goto :goto_6

    .line 210
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_a

    .line 207
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_9

    .line 203
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 201
    :catch_b
    move-exception v4

    goto/16 :goto_1
.end method

.method private static native sec_sctime_autoUpdate()V
.end method

.method private static native sec_sctime_bootComplete()V
.end method

.method private sec_sctime_handleAutoTimeUpdation()V
    .locals 3

    .prologue
    .line 265
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 266
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 268
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 269
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCTimeReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCTimeReceiver$2;-><init>(Lcom/android/server/SecSCTimeReceiver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method private sec_sctime_handleConnectivityStateChanged()V
    .locals 3

    .prologue
    .line 310
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 311
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 314
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCTimeReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCTimeReceiver$3;-><init>(Lcom/android/server/SecSCTimeReceiver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method private static native sec_sctime_nitzReceived(J)V
.end method

.method private static native sec_sctime_ntpReceived(JJ)V
.end method

.method private static native sec_sctime_removebeforefile()V
.end method

.method private static native sec_sctime_removedifffile()V
.end method

.method private static native sec_sctime_testMethod()V
.end method

.method private static native sec_sctime_unlock()V
.end method

.method private static native sec_sctime_updateTime(JJ)V
.end method

.method private sec_sctime_userUpdateHandler()V
    .locals 7

    .prologue
    .line 137
    const-string v4, "SecSCTimeReceiver"

    const-string/jumbo v5, "start sec_sctime_userUpdateHandler()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v4, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "nowTimeFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "autoEnable":I
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 147
    .local v1, "now":Ljava/util/Date;
    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 149
    const-string v4, "24"

    sput-object v4, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    .line 152
    :cond_0
    if-nez v2, :cond_1

    .line 154
    const-string v2, "24"

    .line 157
    :cond_1
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v4, "SecSCTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "Time was changed. time format is not changed check if it is auto update by Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez v0, :cond_2

    .line 165
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "This is a not Auto update. Time format is also not changed. Update Time Diff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/server/SecSCTimeReceiver;->handleUserUpdatedTimeUpdation()V

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 170
    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "Auto time update is on. check network time again to pdate time diff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleAutoTimeUpdation()V

    goto :goto_0

    .line 175
    .end local v3    # "telephonymanager":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v4, "SecSCTimeReceiver"

    const-string v5, "Just time format was changed. no need to udpate Time Diff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sput-object v2, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public SCTimeOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    .line 100
    sget-object v1, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    .line 103
    const-string v1, "SecSCTimeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Format is: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/SecSCTimeReceiver;->timeFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 111
    const-string v1, "SecSCTimeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_unlock()V

    .line 133
    return-void

    .line 116
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v1, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleNitztimeUpdation()V

    goto :goto_0

    .line 119
    :cond_3
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_userUpdateHandler()V

    goto :goto_0

    .line 122
    :cond_4
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public handleUserUpdatedTimeUpdation()V
    .locals 9

    .prologue
    .line 246
    const-wide/16 v2, 0x0

    .line 247
    .local v2, "beforeTime":J
    const-wide/16 v0, 0x0

    .line 248
    .local v0, "afterTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 249
    .local v4, "now":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    .line 250
    invoke-direct {p0}, Lcom/android/server/SecSCTimeReceiver;->getBeforeTime()J

    move-result-wide v2

    .line 251
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 252
    const-string v5, "SecSCTimeReceiver"

    const-string v6, "BeforeBefore is same Before time. duplicate intent. do nothing"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 254
    :cond_0
    const-wide/16 v5, -0x2

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 255
    const-string v5, "SecSCTimeReceiver"

    const-string v6, "Before time does not exist. remove diff file."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_removedifffile()V

    goto :goto_0

    .line 259
    :cond_1
    const-string v5, "SecSCTimeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTimeAndDateDisplay beforeTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and afterTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_updateTime(JJ)V

    goto :goto_0
.end method

.method public onNetworkStateChanged(JJ)V
    .locals 4
    .param p1, "networktime"    # J
    .param p3, "systemtime"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 336
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    .line 338
    const-string v0, "SecSCTimeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state was changed. network time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] system time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v0, "SecSCTimeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state was changed. network time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] system time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_ntpReceived(JJ)V

    .line 342
    :cond_0
    return-void
.end method

.method public onNetworkTimeReceived(JJ)V
    .locals 6
    .param p1, "networktime"    # J
    .param p3, "systemtime"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 295
    cmp-long v2, p1, v3

    if-lez v2, :cond_0

    cmp-long v2, p3, v3

    if-lez v2, :cond_0

    .line 297
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. network time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] system time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. network time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] system time ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCTimeReceiver;->sec_sctime_ntpReceived(JJ)V

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 303
    .local v0, "systime":J
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. NTP could not checked. update diff file. system time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v2, "SecSCTimeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time was changed auto. NTP could not checked. update diff file. system time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/android/server/SecSCTimeReceiver;->handleUserUpdatedTimeUpdation()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    const-string v0, "SecSCTimeReceiver"

    const-string v1, "onReceive : SecureClock Deactivate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public sec_sctime_handleNitztimeUpdation()V
    .locals 6

    .prologue
    .line 222
    const-string v3, "SecSCTimeReceiver"

    const-string v4, "sec_sctime_handleNitztimeUpdation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-wide/16 v1, 0x0

    .line 224
    .local v1, "nitzTime":J
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 226
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/server/SecSCTimeReceiver$1;

    invoke-direct {v3, p0}, Lcom/android/server/SecSCTimeReceiver$1;-><init>(Lcom/android/server/SecSCTimeReceiver;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method
