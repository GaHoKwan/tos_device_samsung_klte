.class public Landroid/hardware/contextaware/utilbundle/CaPowerManager;
.super Ljava/lang/Object;
.source "CaPowerManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IApPowerObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;


# instance fields
.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IApPowerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPowerManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendApStatusToSensorHub(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 170
    new-array v0, v4, [B

    .line 171
    .local v0, "dataPacket":[B
    int-to-byte v2, p1

    aput-byte v2, v0, v3

    .line 172
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 174
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 178
    .local v1, "result":I
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 179
    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void

    .line 174
    nop

    :array_0
    .array-data 1
        -0x4ct
        0xdt
    .end array-data
.end method


# virtual methods
.method public final acquireAPWakeLock()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 188
    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 195
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_1

    .line 196
    const-string v1, "pm is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const-string v1, "WakeLock is already held."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 207
    const/4 v1, 0x1

    const-string v2, "CA_WAKELOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v4, "Context is null"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "apSleepIntent":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "apWakeupIntent":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "powConnectedIntent":Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, "powDisconnectedIntent":Landroid/content/IntentFilter;
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final isScreenOn()Z
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 281
    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 288
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 289
    const-string v1, "Screen On."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    const-string v1, "Screen Off."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyApPowerObserver(IJ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 264
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/IApPowerObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IApPowerObserver;

    .line 267
    .local v1, "observer":Landroid/hardware/contextaware/manager/IApPowerObserver;
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IApPowerObserver;->initializePreparedSubCollection()V

    .line 269
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/contextaware/manager/IApPowerObserver;->updateApPowerStatus(IJ)V

    goto :goto_0

    .line 272
    .end local v1    # "observer":Landroid/hardware/contextaware/manager/IApPowerObserver;
    :cond_1
    return-void
.end method

.method public final registerApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/IApPowerObserver;

    .prologue
    .line 237
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public final releaseAPWakeLock()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    const-string v0, "WakeLock is not held."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 224
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final unregisterApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/IApPowerObserver;

    .prologue
    .line 251
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    return-void
.end method
