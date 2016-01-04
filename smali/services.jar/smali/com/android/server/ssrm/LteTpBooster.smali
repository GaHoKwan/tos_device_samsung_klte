.class final Lcom/android/server/ssrm/LteTpBooster;
.super Ljava/lang/Object;
.source "LteTpBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/LteTpBooster$2;,
        Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final DEBUG:Z

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LteTpBooster"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field private static mDVFSHelperBus1:Landroid/os/DVFSHelper;

.field private static mDVFSHelperBus2:Landroid/os/DVFSHelper;

.field private static mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private static mDVFSHelperCpu1:Landroid/os/DVFSHelper;

.field private static mDVFSHelperCpu2:Landroid/os/DVFSHelper;


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

.field private mContext:Landroid/content/Context;

.field private mCurrentLevel:I

.field private mEnablePoller:Z

.field private mEnableTrafficStatsPoll:Z

.field private mHelperReady:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPollingLevel0:I

.field private mPollingLevel1:I

.field private mPollingLevel2:I

.field private mPollingPeriod:I

.field private mRxBytes:J

.field private mRxThreshold1:J

.field private mRxThreshold2:J

.field private final mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxThreshold1:J

.field private mTxThreshold2:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    .line 67
    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    .line 69
    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 71
    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    .line 73
    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    .line 97
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/LteTpBooster;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x7d0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    .line 51
    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    .line 53
    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    .line 55
    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    .line 57
    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    .line 59
    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    .line 61
    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    .line 63
    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    .line 75
    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    .line 77
    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    .line 79
    iput v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    .line 81
    iput-boolean v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z

    .line 87
    iput v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mClients:Ljava/util/List;

    .line 95
    iput-object v5, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    .line 101
    new-instance v1, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;-><init>(Lcom/android/server/ssrm/LteTpBooster;Lcom/android/server/ssrm/LteTpBooster$1;)V

    iput-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/android/server/ssrm/LteTpBooster$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/LteTpBooster$1;-><init>(Lcom/android/server/ssrm/LteTpBooster;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/LteTpBooster;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/ssrm/LteTpBooster;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/ssrm/LteTpBooster;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/LteTpBooster;)Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/LteTpBooster;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ssrm/LteTpBooster;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/LteTpBooster;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/ssrm/LteTpBooster;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ssrm/LteTpBooster;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/LteTpBooster;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/LteTpBooster;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mClients:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public initDVFSLevel()V
    .locals 15

    .prologue
    const/16 v14, 0x13

    const/16 v3, 0xc

    const/4 v13, 0x1

    const/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    .line 190
    const/4 v9, 0x0

    .line 191
    .local v9, "cpu_freq1":I
    const/4 v10, 0x0

    .line 192
    .local v10, "cpu_freq2":I
    const/4 v8, 0x0

    .line 193
    .local v8, "core_num":I
    const/4 v6, 0x0

    .line 194
    .local v6, "bus_freq1":I
    const/4 v7, 0x0

    .line 196
    .local v7, "bus_freq2":I
    iget-boolean v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "GGSM"

    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    .line 204
    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    .line 205
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    .line 206
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    .line 208
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    .line 209
    const-wide/32 v0, 0x1900000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    .line 210
    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    .line 211
    const-wide/32 v0, 0x2800000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    .line 213
    const v6, 0x61a80

    .line 214
    const v7, 0xc3500

    .line 216
    iput-boolean v13, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    .line 238
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 239
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_CPU1"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    .line 240
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v11, v2

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 244
    :cond_2
    if-eqz v10, :cond_3

    .line 245
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_CPU2"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    .line 246
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v10}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 250
    :cond_3
    if-eqz v8, :cond_4

    .line 251
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 253
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 256
    :cond_4
    if-eqz v6, :cond_5

    .line 257
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_BUS1"

    move v3, v14

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    .line 258
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 261
    :cond_5
    if-eqz v7, :cond_6

    .line 262
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_BUS2"

    move v3, v14

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    .line 263
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 266
    :cond_6
    iput-boolean v13, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    goto/16 :goto_0

    .line 218
    :cond_7
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GGSM"

    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    .line 222
    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    .line 223
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    .line 224
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    .line 226
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    .line 227
    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    .line 228
    const-wide/32 v0, 0x1900000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    .line 229
    const-wide/32 v0, 0x2300000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    .line 231
    const v9, 0xf3c00

    .line 232
    const v10, 0x122a00

    .line 233
    const/4 v8, 0x2

    .line 235
    iput-boolean v13, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    goto/16 :goto_1
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/server/ssrm/LteTpBooster;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public notifyOnDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x8

    .line 334
    iget-boolean v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    if-nez v8, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/server/ssrm/LteTpBooster;->initDVFSLevel()V

    .line 338
    :cond_0
    iget-boolean v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    if-eqz v8, :cond_2

    .line 341
    const-wide/16 v2, 0x0

    .local v2, "dfTx":J
    const-wide/16 v0, 0x0

    .line 343
    .local v0, "dfRx":J
    iget-wide v6, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    .line 344
    .local v6, "preTxBytes":J
    iget-wide v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    .line 345
    .local v4, "preRxBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    .line 346
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    .line 348
    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    sub-long/2addr v8, v6

    mul-long/2addr v8, v12

    iget v10, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    div-long v2, v8, v10

    .line 349
    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    sub-long/2addr v8, v4

    mul-long/2addr v8, v12

    iget v10, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    div-long v0, v8, v10

    .line 354
    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    cmp-long v8, v2, v8

    if-gtz v8, :cond_1

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 355
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/server/ssrm/LteTpBooster;->undateDVFSLevel(I)V

    .line 362
    .end local v0    # "dfRx":J
    .end local v2    # "dfTx":J
    .end local v4    # "preRxBytes":J
    .end local v6    # "preTxBytes":J
    :cond_2
    :goto_0
    return-void

    .line 356
    .restart local v0    # "dfRx":J
    .restart local v2    # "dfTx":J
    .restart local v4    # "preRxBytes":J
    .restart local v6    # "preTxBytes":J
    :cond_3
    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    cmp-long v8, v2, v8

    if-gtz v8, :cond_4

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_5

    .line 357
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/ssrm/LteTpBooster;->undateDVFSLevel(I)V

    goto :goto_0

    .line 359
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/ssrm/LteTpBooster;->undateDVFSLevel(I)V

    goto :goto_0
.end method

.method public undateDVFSLevel(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 271
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    if-eq v0, p1, :cond_4

    .line 273
    const-string v0, "LteTpBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-lt p1, v3, :cond_5

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    if-gtz v0, :cond_5

    .line 276
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 285
    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_6

    .line 286
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 287
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 289
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 290
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 292
    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    .line 307
    :goto_1
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    .line 330
    :cond_4
    return-void

    .line 280
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 294
    :cond_6
    if-lt p1, v3, :cond_9

    .line 295
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_7

    .line 296
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 298
    :cond_7
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_8

    .line 299
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 301
    :cond_8
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    goto :goto_1

    .line 304
    :cond_9
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    goto :goto_1

    .line 309
    :pswitch_0
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_a

    .line 310
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 312
    :cond_a
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 313
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2

    .line 317
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_b

    .line 318
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 320
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 321
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
