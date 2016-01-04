.class Lcom/android/server/RegulatoryObserver;
.super Landroid/os/UEventObserver;
.source "RegulatoryObserver.java"


# static fields
.field private static final MSG_COUNTRY_CODE:I = 0x0

.field private static final REGULATORY_UEVENT_MATCH:Ljava/lang/String; = "MODALIAS=platform:regulatory"

.field private static final TAG:Ljava/lang/String;

.field private static final UEVENT_FILE:Ljava/lang/String; = "/sys/devices/platform/regulatory.0/uevent"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryKeyword:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/server/RegulatoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 52
    const-string v0, "COUNTRY="

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryKeyword:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/server/RegulatoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/RegulatoryObserver$1;-><init>(Lcom/android/server/RegulatoryObserver;)V

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->init()V

    .line 61
    const-string v0, "MODALIAS=platform:regulatory"

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/RegulatoryObserver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RegulatoryObserver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/RegulatoryObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RegulatoryObserver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final init()V
    .locals 10

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 81
    .local v4, "uevent_buf":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "RegulatoryObserver init."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/platform/regulatory.0/uevent"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v4    # "uevent_buf":Ljava/io/BufferedReader;
    .local v5, "uevent_buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 88
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "event_string":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v2, v1, v7

    .line 90
    .local v2, "key":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v6, v1, v7

    .line 91
    .local v6, "value":Ljava/lang/String;
    const-string v7, "COUNTRY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    iput-object v6, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 99
    .end local v1    # "event_string":[Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 100
    .end local v5    # "uevent_buf":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "uevent_buf":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel may not have CRDA support."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    if-eqz v4, :cond_1

    .line 104
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 102
    .end local v4    # "uevent_buf":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "uevent_buf":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v5, :cond_3

    .line 104
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    move-object v4, v5

    .line 109
    .end local v5    # "uevent_buf":Ljava/io/BufferedReader;
    .restart local v4    # "uevent_buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 102
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_4

    .line 104
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 102
    :cond_4
    :goto_5
    throw v7

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "Buffer Close error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "Buffer Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "uevent_buf":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "uevent_buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "Buffer Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "uevent_buf":Ljava/io/BufferedReader;
    .restart local v4    # "uevent_buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 99
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private final run_crda()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v1, "wlan.crda.country"

    iget-object v2, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "ctl.start"

    const-string/jumbo v2, "wifi-crda"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start wifi-crda service to run crda."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country Code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, "1"

    const-string/jumbo v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Send broadcast country code message."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start wifi-crda service to run crda."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 66
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uevent:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    monitor-enter p0

    .line 69
    :try_start_0
    const-string v1, "COUNTRY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regulatory Country Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse country code from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
