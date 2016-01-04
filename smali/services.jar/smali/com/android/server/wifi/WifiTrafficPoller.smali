.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$2;,
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;,
        Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field static final BOOSTER_HOTSPOT3G_FLAG:I = 0x1

.field private static final DBG:Z

.field private static final DBG_BOOSTER:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiTrafficPoller"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field static mBoosterFLAG:I

.field private static mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mCpuFreqindex:[I

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private mHotspotClientNum:I

.field private final mInterface:Ljava/lang/String;

.field mNeedBooster:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxBytes:J

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mThresholdKbytes:[J

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxPkts:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiService:Lcom/android/server/wifi/WifiService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 82
    sput v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    .line 90
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiService;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 67
    iput v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 72
    iput-boolean v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    .line 73
    iput v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    .line 74
    iput-object v7, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 75
    iput-object v7, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 79
    new-array v5, v8, [J

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    .line 98
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    .line 109
    iput-object p3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 110
    new-instance v5, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-direct {v5, p0, v7}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    .line 111
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiService;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v5, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v5, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    new-instance v5, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance v5, Landroid/os/DVFSHelper;

    const/16 v6, 0xc

    invoke-direct {v5, p1, v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 181
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    .line 182
    .local v4, "supportedCPUFreqTable":[I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->setCpuFreqIndex()V

    .line 183
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    sget-object v6, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v1, v5, v6

    .line 187
    .local v1, "mCpuFreqIndex_0":I
    if-eqz v4, :cond_1

    .line 188
    sget-boolean v5, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiTrafficPoller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportedCPUFreqTable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v6, "CPU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    new-instance v5, Landroid/os/DVFSHelper;

    const/16 v6, 0xe

    invoke-direct {v5, p1, v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 195
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "minCore":I
    sget-boolean v5, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiTrafficPoller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Min Core = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_2
    if-nez v2, :cond_5

    .line 198
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v3

    .line 199
    .local v3, "supportedCPUCoreTable":[I
    if-eqz v3, :cond_4

    .line 200
    sget-boolean v5, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiTrafficPoller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportedCPUCoreTable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v6, "CORE_NUM"

    aget v7, v3, v9

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 207
    .end local v3    # "supportedCPUCoreTable":[I
    :cond_4
    :goto_0
    return-void

    .line 204
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v6, "CORE_NUM"

    int-to-long v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 79
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 106
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public determineBoosterMode()V
    .locals 3

    .prologue
    .line 390
    const-string v0, "WifiTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoosterFLAG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget v0, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 392
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->BTCoexMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    .line 401
    :goto_0
    const-string v0, "WifiTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current booster mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 396
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->Hotspot3GMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    goto :goto_0

    .line 398
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    goto :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedBooster:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHotspotClientNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public evaluateTrafficStatsPolling()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    const-string v1, "WifiTrafficPoller"

    const-string v2, "evaluateTrafficStatsPolling"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    if-gtz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService;->getWifiIBSSEnabledState()I

    move-result v1

    if-ne v1, v5, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->determineBoosterMode()V

    .line 260
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 263
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1
.end method

.method public notifyOnDataActivity()V
    .locals 33

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v16, v0

    .local v16, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 282
    .local v12, "preRxPkts":J
    const/4 v4, 0x0

    .line 284
    .local v4, "dataActivity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 287
    const-wide/16 v29, 0x0

    cmp-long v29, v16, v29

    if-gtz v29, :cond_0

    const-wide/16 v29, 0x0

    cmp-long v29, v12, v29

    if-lez v29, :cond_a

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v29, v0

    sub-long v20, v29, v16

    .line 289
    .local v20, "sent":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v29, v0

    sub-long v18, v29, v12

    .line 290
    .local v18, "received":J
    const-wide/16 v29, 0x0

    cmp-long v29, v20, v29

    if-lez v29, :cond_1

    .line 291
    or-int/lit8 v4, v4, 0x2

    .line 293
    :cond_1
    const-wide/16 v29, 0x0

    cmp-long v29, v18, v29

    if-lez v29, :cond_2

    .line 294
    or-int/lit8 v4, v4, 0x1

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    .local v14, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    .line 300
    .local v10, "preRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    mul-int/lit8 v30, v30, 0x3

    add-int/lit8 v30, v30, 0x0

    aget-wide v29, v29, v30

    const-wide/16 v31, 0x400

    mul-long v23, v29, v31

    .line 307
    .local v23, "threshold_0":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    mul-int/lit8 v30, v30, 0x3

    add-int/lit8 v30, v30, 0x1

    aget-wide v29, v29, v30

    const-wide/16 v31, 0x400

    mul-long v25, v29, v31

    .line 308
    .local v25, "threshold_1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    mul-int/lit8 v30, v30, 0x3

    add-int/lit8 v30, v30, 0x2

    aget-wide v29, v29, v30

    const-wide/16 v31, 0x400

    mul-long v27, v29, v31

    .line 309
    .local v27, "threshold_2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v22

    .line 311
    .local v22, "supportedCPUFreqTable":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiTrafficPoller;->setCpuFreqIndex()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    mul-int/lit8 v30, v30, 0x3

    add-int/lit8 v30, v30, 0x0

    aget v6, v29, v30

    .line 313
    .local v6, "mCpuFreqIndex_0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    mul-int/lit8 v30, v30, 0x3

    add-int/lit8 v30, v30, 0x1

    aget v7, v29, v30

    .line 314
    .local v7, "mCpuFreqIndex_1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    mul-int/lit8 v30, v30, 0x3

    add-int/lit8 v30, v30, 0x2

    aget v8, v29, v30

    .line 316
    .local v8, "mCpuFreqIndex_2":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v14

    cmp-long v29, v29, v23

    if-gtz v29, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v10

    cmp-long v29, v29, v23

    if-lez v29, :cond_6

    .line 318
    :cond_3
    if-eqz v22, :cond_4

    .line 319
    const-string v29, "WifiTrafficPoller"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dynamic booster is mCpuFreqIndex_0. mCpuFreqIndex_0 is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const-string v30, "CPU"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    aget v32, v22, v6

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const/16 v30, 0x7d0

    invoke-virtual/range {v29 .. v30}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 326
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 327
    const-string v29, "WifiTrafficPoller"

    const-string v30, "mCpuCoreBooster Lock"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const/16 v30, 0x7d0

    invoke-virtual/range {v29 .. v30}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 361
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v4, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 362
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 364
    .local v3, "client":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 365
    .local v9, "msg":Landroid/os/Message;
    const/16 v29, 0x1

    move/from16 v0, v29

    iput v0, v9, Landroid/os/Message;->what:I

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 368
    :try_start_0
    invoke-virtual {v3, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 369
    :catch_0
    move-exception v29

    goto :goto_1

    .line 332
    .end local v3    # "client":Landroid/os/Messenger;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v14

    cmp-long v29, v29, v25

    if-gtz v29, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v10

    cmp-long v29, v29, v25

    if-lez v29, :cond_8

    .line 334
    :cond_7
    if-eqz v22, :cond_5

    .line 335
    const-string v29, "WifiTrafficPoller"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dynamic booster is mCpuFreqIndex_1. mCpuFreqIndex_1 is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const-string v30, "CPU"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    aget v32, v22, v7

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const/16 v30, 0x7d0

    invoke-virtual/range {v29 .. v30}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 340
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v14

    cmp-long v29, v29, v27

    if-gtz v29, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v10

    cmp-long v29, v29, v27

    if-lez v29, :cond_5

    .line 342
    :cond_9
    if-eqz v22, :cond_5

    .line 343
    const-string v29, "WifiTrafficPoller"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Dynamic booster is mCpuFreqIndex_2. mCpuFreqIndex_2 is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const-string v30, "CPU"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    aget v32, v22, v8

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v29, v0

    const/16 v30, 0x7d0

    invoke-virtual/range {v29 .. v30}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 376
    .end local v6    # "mCpuFreqIndex_0":I
    .end local v7    # "mCpuFreqIndex_1":I
    .end local v8    # "mCpuFreqIndex_2":I
    .end local v10    # "preRxBytes":J
    .end local v14    # "preTxBytes":J
    .end local v18    # "received":J
    .end local v20    # "sent":J
    .end local v22    # "supportedCPUFreqTable":[I
    .end local v23    # "threshold_0":J
    .end local v25    # "threshold_1":J
    .end local v27    # "threshold_2":J
    :cond_a
    return-void
.end method

.method removeClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method

.method public setCpuFreqIndex()V
    .locals 5

    .prologue
    .line 496
    const-string v0, "0,1,5,2,3,8,2,3,8"

    .line 497
    .local v0, "dbCpuFreq":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    .line 500
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    aget v3, v3, v1

    if-gez v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_1
    return-void
.end method

.method public setDynamicThresholdValues()V
    .locals 13

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/data/misc/wifi/.threshold"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 453
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 455
    .local v7, "values":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 456
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v8, 0x9

    if-ge v5, v8, :cond_1

    .line 457
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 458
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 473
    .end local v5    # "i":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_1
    sget-boolean v8, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v8, :cond_2

    .line 474
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x6

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x7

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    if-eqz v1, :cond_3

    .line 486
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v0, v1

    .line 492
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    return-void

    .line 463
    :catch_0
    move-exception v6

    .line 464
    .local v6, "ignore":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-boolean v8, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_5
    const-string v3, "10240,5120,2560,10240,5120,1280,10240,5120,1280"

    .line 466
    .local v3, "dbThreshold":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 467
    .restart local v7    # "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    const/16 v8, 0x9

    if-ge v5, v8, :cond_9

    .line 468
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    .line 469
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 473
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_5
    sget-boolean v9, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v9, :cond_7

    .line 474
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x5

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x6

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x7

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0x8

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_7
    if-eqz v0, :cond_8

    .line 486
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 473
    :cond_8
    :goto_6
    throw v8

    .line 487
    :catch_1
    move-exception v4

    .line 488
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "WifiTrafficPoller"

    const-string v10, "Failed to close .threshold file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 473
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dbThreshold":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "ignore":Ljava/lang/Exception;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_9
    sget-boolean v8, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v8, :cond_a

    .line 474
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x6

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x7

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_a
    if-eqz v0, :cond_4

    .line 486
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 487
    :catch_2
    move-exception v4

    .line 488
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 487
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 488
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 473
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 463
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public setThresholdValues()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/.threshold"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 411
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 414
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 415
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 416
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 431
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v6, :cond_1

    .line 432
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[Hotspot3G] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v12

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    if-eqz v1, :cond_2

    .line 438
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_0
    move-object v0, v1

    .line 444
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    return-void

    .line 419
    :catch_0
    move-exception v4

    .line 420
    .local v4, "ignore":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-boolean v6, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    cmp-long v6, v6, v13

    if-gez v6, :cond_5

    .line 422
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const-string v8, "3840"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 424
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v13

    if-gez v6, :cond_6

    .line 425
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 427
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    cmp-long v6, v6, v13

    if-gez v6, :cond_7

    .line 428
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    :cond_7
    sget-boolean v6, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v6, :cond_8

    .line 432
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[Hotspot3G] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v12

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_8
    if-eqz v0, :cond_3

    .line 438
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 439
    :catch_1
    move-exception v3

    .line 440
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "WifiTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 431
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    sget-boolean v7, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v7, :cond_9

    .line 432
    const-string v7, "WifiTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v7, "WifiTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v9, v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v7, "WifiTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v9, v9, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_9
    if-eqz v0, :cond_a

    .line 438
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 431
    :cond_a
    :goto_4
    throw v6

    .line 439
    :catch_2
    move-exception v3

    .line 440
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "WifiTrafficPoller"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 439
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 440
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "WifiTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 431
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 419
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method
