.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHal:I

.field private final mHalLock:Ljava/lang/Object;

.field private mLEDTimer:Ljava/util/Timer;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private resultSelfTest:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 76
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 77
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 79
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 82
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    .line 87
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ConsumerIrService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConsumerIrService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method private blinkLED(I)V
    .locals 4
    .param p1, "period"    # I

    .prologue
    .line 166
    const-string v0, "ConsumerIrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkLED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->stopBlinkLED()V

    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 171
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/ConsumerIrService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ConsumerIrService$1;-><init>(Lcom/android/server/ConsumerIrService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 177
    :cond_0
    return-void
.end method

.method private static native halGetCarrierFrequencies(I)[I
.end method

.method private static native halOpen()I
.end method

.method private static native halTransmit(II[I)I
.end method

.method private stopBlinkLED()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 188
    :cond_0
    return-void
.end method

.method private swtichLED(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 200
    .local v1, "fwLED":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/led/led_b"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .local v2, "fwLED":Ljava/io/FileWriter;
    if-eqz p1, :cond_2

    .line 202
    :try_start_1
    const-string v4, "40"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 205
    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    const/4 v3, 0x1

    .line 212
    if-eqz v2, :cond_0

    .line 214
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_1
    move-object v1, v2

    .line 220
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :cond_1
    :goto_2
    return v3

    .line 204
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :cond_2
    :try_start_3
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 208
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    if-eqz v1, :cond_1

    .line 214
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 209
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 210
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    if-eqz v1, :cond_1

    .line 214
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 215
    :catch_3
    move-exception v0

    goto :goto_4

    .line 212
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_6
    if-eqz v1, :cond_3

    .line 214
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 212
    :cond_3
    :goto_7
    throw v4

    .line 215
    :catch_4
    move-exception v0

    .line 216
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 215
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    .line 216
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_6

    .line 209
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_5

    .line 207
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method private throwIfNoIrEmitter()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 155
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    invoke-static {v0}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(I)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasIrEmitter()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.TRANSMIT_IR"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 111
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Requires TRANSMIT_IR permission"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 114
    :cond_0
    const-wide/16 v8, 0x0

    .line 115
    .local v8, "totalXmitTime":J
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    .line 116
    move-object/from16 v2, p3

    .local v2, "arr$":[I
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v7, v2, v4

    .line 117
    .local v7, "slice":I
    if-gtz v7, :cond_1

    .line 118
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Non-positive IR slice"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 120
    :cond_1
    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v7    # "slice":I
    :cond_2
    const-wide/32 v10, 0x1e8480

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    .line 124
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "IR pattern too long"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 127
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v11

    .line 131
    :try_start_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/ConsumerIrService;->mHal:I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v10, v0, v1}, Lcom/android/server/ConsumerIrService;->halTransmit(II[I)I

    move-result v3

    .line 133
    .local v3, "err":I
    if-gez v3, :cond_4

    .line 134
    const-string v10, "ConsumerIrService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error transmitting: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v8

    move/from16 v0, p2

    int-to-long v14, v0

    div-long/2addr v12, v14

    long-to-int v6, v12

    .line 138
    .local v6, "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;->blinkLED(I)V

    .line 139
    if-nez v3, :cond_5

    .line 140
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConsumerIrService;->resultSelfTest:I

    .line 143
    :cond_5
    monitor-exit v11

    .line 144
    return-void

    .line 143
    .end local v3    # "err":I
    .end local v6    # "period":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method
