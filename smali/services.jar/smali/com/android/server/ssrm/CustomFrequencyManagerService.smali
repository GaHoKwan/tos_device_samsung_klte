.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field static final DEBUG:Z

.field private static final IS_TYPE_MRVL:Z

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object;

.field private static final SYSBUS_LOCK:Ljava/lang/Object;

.field static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static countOfSysBusLock:I

.field public static mContext:Landroid/content/Context;

.field static mContextStatic:Landroid/content/Context;

.field private static final mDebugDVFSLock:Z

.field private static final mSpew:Z


# instance fields
.field private final MMC_BURST_PATH:Ljava/lang/String;

.field private final MMC_CBURST_MODE_VALUE:I

.field private final MMC_NORMAL_MODE_VALUE:I

.field final PATH_CPU_MAX_LIMIT:Ljava/lang/String;

.field final PATH_CPU_MIN_LIMIT:Ljava/lang/String;

.field final UTF8:Ljava/lang/String;

.field private filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

.field mActivityManager:Landroid/app/IActivityManager;

.field mBootComplete:Z

.field mCpuCorePath:Z

.field private mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private final mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

.field mDisableBusBoost:Z

.field mDisableCpuBoost:Z

.field mDisableGpuBoost:Z

.field private final mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

.field mGpuPath:Z

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

.field mMonitor:Lcom/android/server/ssrm/Monitor;

.field private volatile mPersistentDVFSLocksInfo:I

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

.field mRemainingUsageTimeCalculator:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

.field mScreenOn:Z

.field private mSupportedCPUCore:[I

.field private mSupportedFrequency:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedLCDFrequency:[I

.field private mSupportedSysBusFrequency:[I

.field mSysBusPath:Z

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mUserPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    .line 73
    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 75
    sput-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 127
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    .line 129
    const-string v0, "mrvl"

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    .line 1565
    const-string v0, "android_ssrm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 151
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 65
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->UTF8:Ljava/lang/String;

    .line 67
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 69
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 71
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 77
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 79
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    .line 81
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 89
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    .line 91
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 93
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 95
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 97
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 99
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 101
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 105
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    .line 107
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 109
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 111
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    .line 113
    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 115
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    .line 132
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 134
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    .line 136
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    .line 138
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 140
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 142
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 144
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1164
    const-string v4, "/sys/block/mmcblk0/bkops_en"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_BURST_PATH:Ljava/lang/String;

    .line 1166
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_CBURST_MODE_VALUE:I

    .line 1168
    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_NORMAL_MODE_VALUE:I

    .line 2220
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 2222
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 2224
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 2226
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 2228
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 2230
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2288
    const-string v4, "/sys/power/cpufreq_max_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MAX_LIMIT:Ljava/lang/String;

    .line 2290
    const-string v4, "/sys/power/cpufreq_min_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MIN_LIMIT:Ljava/lang/String;

    .line 152
    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 153
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    sput-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initFal()V

    .line 157
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysfsNode()V

    .line 158
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 159
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedCPUCore()V

    .line 161
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedFrequency()V

    .line 163
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedLCDFreq()V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    .line 167
    const-string v2, "/data/system/ssrm_v2.disable_cpu_boost"

    .line 168
    .local v2, "PATH_TO_DISABLE_CPU_BOOST":Ljava/lang/String;
    const-string v3, "/data/system/ssrm_v2.disable_gpu_boost"

    .line 169
    .local v3, "PATH_TO_DISABLE_GPU_BOOST":Ljava/lang/String;
    const-string v1, "/data/system/ssrm_v2.disable_bus_boost"

    .line 170
    .local v1, "PATH_TO_DISABLE_BUS_BOOST":Ljava/lang/String;
    const-string v0, "/data/system/ssrm_v2.disable_all_boost"

    .line 172
    .local v0, "PATH_TO_DISABLE_ALL_BOOST":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_cpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 175
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_gpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 178
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_bus_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 181
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_all_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 183
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 184
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 187
    :cond_3
    new-instance v4, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 188
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    .line 189
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4}, Lcom/android/server/ssrm/PreMonitor;->run()V

    .line 191
    new-instance v4, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    .line 193
    new-instance v4, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-direct {v4, p1}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingUsageTimeCalculator:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    .line 194
    return-void
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2098
    packed-switch p0, :pswitch_data_0

    .line 2104
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 2100
    :pswitch_0
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_0

    .line 2102
    :pswitch_1
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_0

    .line 2098
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method private checkSysfsNode()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 225
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    .line 227
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 228
    return-void
.end method

.method private initFal()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "Combination"

    sget-object v1, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/android/server/ssrm/QcFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/QcFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/MarvellFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/GenericFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0
.end method

.method private initSupportedCPUCore()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    goto :goto_0
.end method

.method private initSupportedFrequency()V
    .locals 20

    .prologue
    .line 1569
    const-string v17, "CustomFrequencyManagerService"

    const-string v18, "initSupportedFrequency::"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v7, 0x0

    .line 1572
    .local v7, "buf":Ljava/io/BufferedReader;
    const-string v2, "/sys/power/cpufreq_table"

    .line 1573
    .local v2, "CPU_FREQ_TABLE_PATH":Ljava/lang/String;
    const-string v3, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    .line 1574
    .local v3, "CPU_FREQ_TABLE_PATH_ADONIS":Ljava/lang/String;
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    .line 1575
    .local v4, "CPU_FREQ_TABLE_PATH_MARVELL":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v17, "/sys/power/cpufreq_table"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v5, "a":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v6, "b":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v9, "c":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v12, 0x1

    .line 1579
    .local v12, "isCpuFreqTablePathExist":Z
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v13, 0x1

    .line 1580
    .local v13, "isCpuFreqTablePathForAdonisExist":Z
    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v14, 0x1

    .line 1582
    .local v14, "isCpuFreqTablePathForMarvellExist":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1584
    if-eqz v12, :cond_5

    .line 1585
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/power/cpufreq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 1592
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_3
    if-nez v7, :cond_7

    .line 1618
    if-eqz v7, :cond_1

    .line 1619
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1626
    :cond_1
    :goto_4
    return-void

    .line 1578
    .end local v12    # "isCpuFreqTablePathExist":Z
    .end local v13    # "isCpuFreqTablePathForAdonisExist":Z
    .end local v14    # "isCpuFreqTablePathForMarvellExist":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1579
    .restart local v12    # "isCpuFreqTablePathExist":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 1580
    .restart local v13    # "isCpuFreqTablePathForAdonisExist":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1586
    .restart local v14    # "isCpuFreqTablePathForMarvellExist":Z
    :cond_5
    if-eqz v13, :cond_6

    .line 1587
    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1588
    :cond_6
    if-eqz v14, :cond_0

    .line 1589
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1596
    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 1597
    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_8

    .line 1618
    if-eqz v7, :cond_1

    .line 1619
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 1621
    :catch_0
    move-exception v10

    .line 1622
    .end local v15    # "line":Ljava/lang/String;
    .local v10, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1600
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1601
    .local v16, "strSupportedFreq":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    .line 1603
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    .line 1604
    sget-boolean v17, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v17, :cond_9

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11

    .line 1610
    :goto_7
    const-string v17, "CustomFrequencyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initSupportedFrequency:: mSupportedFrequency = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v19, v0

    aget v19, v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1608
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    aget-object v18, v16, v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 1613
    .end local v11    # "i":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "strSupportedFreq":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1614
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1615
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1618
    if-eqz v7, :cond_1

    .line 1619
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 1621
    :catch_2
    move-exception v10

    goto/16 :goto_5

    .line 1617
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 1618
    if-eqz v7, :cond_a

    .line 1619
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1617
    :cond_a
    :goto_8
    throw v17

    .line 1621
    :catch_3
    move-exception v10

    .line 1622
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1621
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto/16 :goto_5

    .line 1618
    .restart local v11    # "i":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "strSupportedFreq":[Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_1

    .line 1619
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_4

    .line 1621
    :catch_5
    move-exception v10

    goto/16 :goto_5
.end method

.method private initSupportedGPUFrequency()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method private initSupportedLCDFreq()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 274
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 275
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 276
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x2

    const/16 v2, 0x33

    aput v2, v0, v1

    .line 277
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x3

    const/16 v2, 0x3c

    aput v2, v0, v1

    goto :goto_0
.end method

.method private initSupportedSysBusFrequency()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    goto :goto_0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2109
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2113
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2114
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    return-void
.end method

.method private modifyGPUToValue(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    goto :goto_0
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static native nativecheckForString(Ljava/lang/String;I[B)I
.end method

.method private static onListScrollBoostEvent(Z)V
    .locals 6
    .param p0, "enable"    # Z

    .prologue
    .line 2119
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListScrollBoostEvent:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    :try_start_0
    const-class v3, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    .line 2123
    .local v2, "instance":Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->onListScrollBoost(Z)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2129
    .end local v2    # "instance":Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
    :goto_0
    return-void

    .line 2124
    :catch_0
    move-exception v0

    .line 2125
    .local v0, "e1":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 2126
    .end local v0    # "e1":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 2127
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2148
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v4

    .line 2149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v3, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2150
    .local v2, "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherCPUCoreLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2154
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 2155
    .local v1, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2157
    .end local v1    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_0
    monitor-exit v4

    .line 2158
    return-void

    .line 2157
    .end local v0    # "i":I
    .end local v2    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private releaseAllLauncherDVFSLocks(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2133
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2134
    .local v3, "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2138
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 2139
    .local v2, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    iget-object v4, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2141
    .end local v2    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_0
    monitor-exit v5

    .line 2145
    .end local v1    # "i":I
    .end local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :goto_1
    return-void

    .line 2141
    .restart local v1    # "i":I
    .restart local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2142
    .end local v1    # "i":I
    .end local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :catch_0
    move-exception v0

    .line 2143
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private revertGPUToDefault()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    goto :goto_0
.end method

.method static stringCheckFromPms(Ljava/lang/String;I)I
    .locals 3
    .param p0, "app_path"    # Ljava/lang/String;
    .param p1, "app_hash"    # I

    .prologue
    .line 2319
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/ssrm/Unzipper;->unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 2320
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 2321
    .local v1, "rawData":[B
    invoke-static {p0, p1, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativecheckForString(Ljava/lang/String;I[B)I

    move-result v2

    return v2
.end method

.method private verifyDefaultCondition()V
    .locals 4

    .prologue
    .line 231
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v1, :cond_1

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method acquireCpuDvfsLock(II)I
    .locals 4
    .param p1, "lockType"    # I
    .param p2, "freq"    # I

    .prologue
    .line 2293
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeAcquireDVFSLock(II)I

    move-result v0

    .line 2302
    :goto_0
    return v0

    .line 2297
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2298
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2299
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2300
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x7

    .line 1840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1841
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1843
    .local v5, "pid":I
    if-eqz p4, :cond_0

    const-string v0, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    .line 1851
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1852
    :cond_1
    if-eq p1, v1, :cond_3

    .line 1873
    :cond_2
    :goto_0
    return-void

    .line 1856
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    if-nez v0, :cond_2

    .line 1860
    const-string v0, "POWER_SAVING_MODE@1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v1, :cond_2

    .line 1865
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1867
    .local v7, "ident":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1868
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 1869
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1871
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1869
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1871
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1877
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, p3, p6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v8

    .line 1883
    .local v8, "index":I
    if-gez v8, :cond_4

    .line 1884
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1885
    .local v0, "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1886
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "Before Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1889
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V

    .line 1890
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1891
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "After Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1893
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Creating new Lock type & adding to List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 1909
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_3

    .line 1911
    :cond_2
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1912
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1921
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    .line 1922
    return-void

    .line 1898
    .end local v0    # "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1900
    .restart local v0    # "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1901
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1914
    :cond_5
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1915
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_3

    .line 1917
    :cond_6
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1918
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "callingId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 2029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2030
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2035
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2037
    .local v7, "ident":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2038
    :try_start_1
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 2041
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 2042
    .local v3, "token":Landroid/os/IBinder;
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    .line 2049
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 2050
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 2056
    .end local v3    # "token":Landroid/os/IBinder;
    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2060
    return-void

    .line 2052
    :cond_0
    :try_start_2
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2056
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2058
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public checkCPUBoostRange(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 325
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 330
    const/4 v1, 0x1

    .line 336
    :goto_1
    return v1

    .line 328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 334
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkCPUCoreRange(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 348
    const/4 v1, 0x1

    .line 351
    :goto_1
    return v1

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkFrameRateRange(I)Z
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public checkGPUFrequencyRange(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 298
    const/4 v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public checkSysBusFrequencyRange(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 307
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v1, :cond_2

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 313
    const/4 v1, 0x1

    .line 320
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 311
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 318
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2198
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 2199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " without permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    :cond_0
    return-void

    .line 2205
    :cond_1
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v4, :cond_0

    .line 2206
    const-string v4, "SSRM Service (dumpsys CustomFrequencyManagerService)\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/ssrm/Monitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2208
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    move-result-object v0

    .line 2209
    .local v0, "db":Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;
    if-eqz v0, :cond_0

    .line 2210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2211
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->readLog()Ljava/util/ArrayList;

    move-result-object v2

    .line 2212
    const-string v4, "SSRM RUT ENGINE"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2214
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getDVFSLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .locals 1

    .prologue
    .line 1830
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemainUsageTime(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 208
    invoke-static {p1}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->getRemainUsageTime(I)I

    move-result v0

    return v0
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->getStandbyTimeInPowerSavingMode()I

    move-result v0

    return v0
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v0

    return v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedLCDFrequency()[I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public mpdUpdate(I)V
    .locals 11
    .param p1, "mpEnable"    # I

    .prologue
    .line 910
    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    .line 911
    const-string v8, "enable_mpd"

    .line 916
    .local v8, "str":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 917
    .local v5, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 919
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .local v6, "hotplugSocket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 922
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 923
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 924
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 925
    .local v1, "byteString":[B
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 934
    if-eqz v7, :cond_0

    .line 935
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 937
    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 938
    if-eqz v6, :cond_1

    .line 939
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v5, v6

    .line 945
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :cond_2
    :goto_2
    return-void

    .line 913
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "str":Ljava/lang/String;
    :cond_3
    const-string v8, "disable_mpd"

    .restart local v8    # "str":Ljava/lang/String;
    goto :goto_0

    .line 927
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 928
    .local v3, "e1":Ljava/net/UnknownHostException;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 934
    if-eqz v7, :cond_4

    .line 935
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 937
    :cond_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 938
    if-eqz v5, :cond_2

    .line 939
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 941
    :catch_1
    move-exception v4

    .line 942
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    .local v4, "ex":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 929
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 931
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 934
    if-eqz v7, :cond_5

    .line 935
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 937
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 938
    if-eqz v5, :cond_2

    .line 939
    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 941
    :catch_3
    move-exception v4

    goto :goto_4

    .line 933
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 934
    :goto_6
    if-eqz v7, :cond_6

    .line 935
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 937
    :cond_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 938
    if-eqz v5, :cond_7

    .line 939
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 933
    :cond_7
    :goto_7
    throw v9

    .line 941
    :catch_4
    move-exception v4

    .line 942
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 941
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "byteString":[B
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_5
    move-exception v4

    .line 942
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 941
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v4

    goto :goto_4

    :catch_7
    move-exception v4

    goto :goto_4

    .line 933
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_6

    .line 929
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_5

    .line 927
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_3
.end method

.method public notifyWmAniationState(JZ)V
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 2162
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v0, :cond_0

    .line 2167
    :cond_0
    return-void
.end method

.method registerIntentReceiver()V
    .locals 3

    .prologue
    .line 2275
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2286
    :goto_0
    return-void

    .line 2279
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2280
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2281
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2282
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2283
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2284
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2285
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v1

    .line 1069
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1070
    monitor-exit v1

    .line 1071
    return-void

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1074
    const/4 v1, 0x0

    .line 1076
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1077
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core before removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1080
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 1081
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1082
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core after removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1085
    :cond_1
    if-nez v1, :cond_5

    .line 1086
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1087
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    :cond_2
    if-eqz v1, :cond_4

    .line 1154
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1155
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1156
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1158
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 1162
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_4
    return-void

    .line 1092
    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_b

    .line 1093
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 1094
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1095
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 1100
    .local v2, "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_9

    .line 1101
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 1102
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1108
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8
    :goto_1
    if-eqz v1, :cond_4

    .line 1154
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1155
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1156
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 1110
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    :try_start_2
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 1111
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_a
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 1115
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1145
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1153
    if-eqz v1, :cond_4

    .line 1154
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1155
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1156
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 1119
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_b
    :try_start_4
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 1120
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 1121
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 1126
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_e

    .line 1127
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 1128
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1134
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1148
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_1
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: IOException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1153
    if-eqz v1, :cond_4

    .line 1154
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1155
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1156
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 1136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_e
    :try_start_6
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 1137
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 1141
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1153
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_11

    .line 1154
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1155
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_10

    .line 1156
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1158
    :cond_10
    const/4 v1, 0x0

    .line 1153
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_11
    throw v4
.end method

.method releaseCpuDvfsLock(I)I
    .locals 3
    .param p1, "lockType"    # I

    .prologue
    .line 2306
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeReleaseDVFSLock(I)I

    move-result v0

    .line 2315
    :goto_0
    return v0

    .line 2310
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2311
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2312
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2313
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1926
    const-string v2, "jf"

    sget-object v3, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "exynos4"

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1928
    const-string v2, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1929
    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherDVFSLocks(Ljava/lang/String;)V

    .line 1930
    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V

    .line 1936
    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1937
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    .line 1943
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1945
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1946
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1947
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1949
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1951
    return-void

    .line 1947
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1949
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1954
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1955
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "Before Removing ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1958
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    .line 1959
    .local v2, "removedDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1960
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "After Removing ----------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1963
    :cond_1
    if-nez v2, :cond_2

    .line 2025
    :goto_0
    return-void

    .line 1966
    :cond_2
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 1973
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_4

    .line 1974
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v1

    .line 1976
    .local v1, "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v1, :cond_5

    .line 1979
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1980
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_3
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1986
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 2024
    .end local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_4
    :goto_1
    iget-object v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 1989
    .restart local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_5
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 1990
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    .line 1994
    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1

    .line 1997
    .end local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_7
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 1998
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_4

    .line 1999
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v0

    .line 2001
    .local v0, "nextMaxOfMinLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v0, :cond_9

    .line 2003
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 2004
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_8
    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v6, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 2010
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1

    .line 2013
    :cond_9
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 2014
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    .line 2018
    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1
.end method

.method public releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 483
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 486
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 487
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 488
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 491
    :cond_1
    if-nez v1, :cond_5

    .line 492
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 493
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 559
    :cond_2
    if-eqz v1, :cond_4

    .line 560
    :try_start_1
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 561
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 562
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 564
    :cond_3
    const/4 v1, 0x0

    .line 495
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :goto_0
    return-void

    .line 497
    :cond_5
    const/16 v4, 0x9

    if-ne p1, v4, :cond_d

    .line 498
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 499
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 500
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU Max request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 504
    .local v2, "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_b

    .line 505
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 506
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU_MAX, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 511
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 513
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    .line 560
    :try_start_3
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 561
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 562
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 564
    :cond_9
    :goto_2
    const/4 v1, 0x0

    .line 568
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_a
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 515
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_b
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 516
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 520
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 551
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: FileNotFoundException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 559
    if-eqz v1, :cond_a

    .line 560
    :try_start_6
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 561
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 562
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 524
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_d
    const/4 v4, 0x1

    if-ne p1, v4, :cond_8

    .line 525
    :try_start_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 526
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 527
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 531
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_10

    .line 532
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 533
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 538
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 540
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 554
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 559
    if-eqz v1, :cond_a

    .line 560
    :try_start_9
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 561
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 562
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_10
    :try_start_a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_11

    .line 543
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_11
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 547
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 559
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_13

    .line 560
    :try_start_b
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 561
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_12

    .line 562
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 564
    :cond_12
    const/4 v1, 0x0

    .line 559
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_13
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public releasePersistentDVFSLock(ILjava/lang/String;)V
    .locals 7
    .param p1, "callingId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2071
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2072
    :try_start_1
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2073
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2074
    .local v2, "lock":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 2075
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callingId : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {p0, v2, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2080
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 2091
    .end local v2    # "lock":Landroid/os/IBinder;
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2093
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2095
    return-void

    .line 2082
    .restart local v2    # "lock":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    const-string v3, "CustomFrequencyManagerService"

    const-string v5, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock under-locked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2091
    .end local v2    # "lock":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2093
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2087
    :cond_1
    :try_start_4
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 661
    const/4 v1, 0x0

    .line 663
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 664
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 667
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 668
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 669
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 672
    :cond_1
    if-nez v1, :cond_5

    .line 673
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 674
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 739
    :cond_2
    if-eqz v1, :cond_4

    .line 740
    :try_start_1
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 741
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 742
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 744
    :cond_3
    const/4 v1, 0x0

    .line 676
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    :goto_0
    return-void

    .line 679
    :cond_5
    const/16 v4, 0xa

    if-ne p1, v4, :cond_d

    .line 680
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 681
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 682
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 686
    .local v2, "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_b

    .line 687
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 688
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 694
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 739
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    .line 740
    :try_start_3
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 741
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 742
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 744
    :cond_9
    :goto_2
    const/4 v1, 0x0

    .line 748
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_a
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 696
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_b
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 697
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Min to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 701
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 731
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 739
    if-eqz v1, :cond_a

    .line 740
    :try_start_6
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 741
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 742
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 705
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_d
    :try_start_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 706
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 707
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 712
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_10

    .line 713
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 714
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 720
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 734
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_1
    move-exception v0

    .line 735
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 739
    if-eqz v1, :cond_a

    .line 740
    :try_start_9
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 741
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 742
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 722
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_10
    :try_start_a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_11

    .line 723
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Max to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_11
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 727
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 739
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_13

    .line 740
    :try_start_b
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 741
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_12

    .line 742
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 744
    :cond_12
    const/4 v1, 0x0

    .line 739
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_13
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-static {}, Lcom/android/server/ssrm/SSRMUtil;->isStabilityTestCondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 995
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 997
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 998
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Core # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_1
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 1003
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_d

    .line 1005
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 1007
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1008
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_2
    if-gez v9, :cond_9

    .line 1011
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1013
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 1014
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1017
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 1018
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 1019
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1022
    :cond_4
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1023
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_5
    :goto_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    .line 1033
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_8

    .line 1035
    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 1036
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_7
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1040
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1026
    .restart local v9    # "index":I
    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1027
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1028
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1053
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_0
    move-exception v8

    .line 1054
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1043
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_a
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_8

    .line 1045
    :cond_b
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 1046
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_c
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x9

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1050
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1056
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_1
    move-exception v8

    .line 1057
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CPUCore value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public requestCPUUpdate(II)V
    .locals 12
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .prologue
    .line 873
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "core "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 874
    .local v8, "send":Ljava/lang/String;
    const-string v9, "CustomFrequencyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestCPUUpdate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v5, 0x0

    .line 877
    .local v5, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 879
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .local v6, "hotplugSocket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 882
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 883
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 884
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 885
    .local v1, "byteString":[B
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 893
    if-eqz v7, :cond_0

    .line 894
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 896
    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 897
    if-eqz v6, :cond_1

    .line 898
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v5, v6

    .line 905
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :cond_2
    :goto_1
    return-void

    .line 886
    :catch_0
    move-exception v3

    .line 887
    .local v3, "e1":Ljava/net/UnknownHostException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 893
    if-eqz v7, :cond_3

    .line 894
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 896
    :cond_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 897
    if-eqz v5, :cond_2

    .line 898
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 900
    :catch_1
    move-exception v4

    .line 901
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    .local v4, "ex":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 888
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 890
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 893
    if-eqz v7, :cond_4

    .line 894
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 896
    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 897
    if-eqz v5, :cond_2

    .line 898
    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 900
    :catch_3
    move-exception v4

    goto :goto_3

    .line 892
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 893
    :goto_5
    if-eqz v7, :cond_5

    .line 894
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 896
    :cond_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 897
    if-eqz v5, :cond_6

    .line 898
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 892
    :cond_6
    :goto_6
    throw v9

    .line 900
    :catch_4
    move-exception v4

    .line 901
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 900
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "byteString":[B
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_5
    move-exception v4

    .line 901
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 900
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v4

    goto :goto_3

    :catch_7
    move-exception v4

    goto :goto_3

    .line 892
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_5

    .line 888
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_4

    .line 886
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_2
.end method

.method public requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 388
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 390
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    .line 475
    :cond_2
    :goto_0
    return-void

    .line 401
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    if-nez v1, :cond_2

    .line 405
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 406
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_d

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 411
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 412
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_4
    if-gez v9, :cond_9

    .line 415
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 417
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 418
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 421
    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 422
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 423
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 426
    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 427
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_7
    :goto_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_b

    .line 437
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_a

    .line 438
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 440
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 430
    .restart local v9    # "index":I
    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 431
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 432
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 460
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_0
    move-exception v8

    .line 461
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: FileNotFoundException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 441
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_a
    :try_start_5
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_8

    .line 442
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 443
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 445
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 463
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_1
    move-exception v8

    .line 464
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 447
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 448
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_c

    .line 449
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 451
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    goto :goto_2

    .line 452
    :cond_c
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_8

    .line 453
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 454
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 456
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 468
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_d
    :try_start_8
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: GPU Frequency value is not in the permitted range. frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "fpsLevel"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 754
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 756
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 757
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate:: fpsLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    const/4 v2, 0x3

    .line 763
    .local v2, "type":I
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v9

    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v8

    .line 765
    .local v8, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 766
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_1
    const/4 v0, 0x0

    .line 770
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-gez v8, :cond_8

    .line 771
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 772
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 773
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS before adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 777
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 778
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS after adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 781
    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 782
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, index not found, new req added in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v3, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v3, :cond_7

    .line 793
    :cond_5
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 794
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, Going to change max FPS."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_6
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v1}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 797
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 799
    :cond_7
    monitor-exit v9

    .line 800
    return-void

    .line 785
    :cond_8
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 786
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 787
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, request already in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "burstRate"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1172
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "128"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 949
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 950
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    if-nez p1, :cond_2

    .line 986
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 958
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 961
    :cond_3
    move-object v5, p1

    .line 963
    .local v5, "send":Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 964
    .local v2, "localSocket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 966
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "/dev/socket/mpdecision"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 968
    .local v3, "localSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 969
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 970
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    if-eqz v4, :cond_4

    .line 977
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 979
    :cond_4
    if-eqz v2, :cond_1

    .line 980
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v1

    .line 983
    .end local v3    # "localSocketAddress":Landroid/net/LocalSocketAddress;
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 971
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 976
    if-eqz v4, :cond_5

    .line 977
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 979
    :cond_5
    if-eqz v2, :cond_1

    .line 980
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 982
    :catch_2
    move-exception v1

    goto :goto_1

    .line 975
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 976
    if-eqz v4, :cond_6

    .line 977
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 979
    :cond_6
    if-eqz v2, :cond_7

    .line 980
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 975
    :cond_7
    :goto_2
    throw v6

    .line 982
    :catch_3
    move-exception v1

    .line 983
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 982
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "localSocketAddress":Landroid/net/LocalSocketAddress;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 574
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 576
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frequency # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 583
    :cond_1
    const/16 v1, 0xb

    if-eq p1, v1, :cond_3

    .line 656
    :cond_2
    :goto_0
    return-void

    .line 587
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    if-nez v1, :cond_2

    .line 591
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 592
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_f

    .line 594
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 596
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 597
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_4
    if-gez v9, :cond_b

    .line 600
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 602
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 603
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 606
    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 607
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 608
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 611
    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 612
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_7
    :goto_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_c

    .line 622
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_a

    .line 624
    :cond_8
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 625
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Min value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_9
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 631
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_a
    :goto_2
    :try_start_2
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 615
    .restart local v9    # "index":I
    :cond_b
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 616
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 617
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 644
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_0
    move-exception v8

    .line 645
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 634
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_c
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_a

    .line 636
    :cond_d
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 637
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Max value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x6

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 641
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 647
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_1
    move-exception v8

    .line 648
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 652
    .end local v8    # "e":Ljava/io/IOException;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "requestSysBus value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 805
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 807
    .local v2, "pid":I
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 808
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreLCDFrameRate:: package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    const/4 v4, 0x3

    .line 814
    .local v4, "type":I
    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v7

    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 818
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS before removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 821
    :cond_1
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6, p1, v4, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v0

    .line 822
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 823
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS after removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 826
    :cond_2
    if-nez v0, :cond_4

    .line 827
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 828
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, request not found, returning null"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_3
    monitor-exit v7

    .line 868
    :goto_0
    return-void

    .line 833
    :cond_4
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v0, v6, :cond_7

    .line 834
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 835
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, Current Sys Bus request has asked for release"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_5
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxFpsRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 840
    .local v1, "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v1, :cond_9

    .line 841
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 842
    const-string v6, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreLCDFrameRate, there is a pending request in list, modifying with value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_6
    iget v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 847
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 859
    .end local v1    # "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 860
    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 861
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_8

    .line 862
    const/4 v6, 0x0

    invoke-interface {v3, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 867
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_8
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 849
    .restart local v1    # "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    const/16 v6, 0x63

    :try_start_1
    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 850
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 851
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, No Pending requests, reverting System Bus Max to default"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_a
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public restoreMMCBurstRate(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1177
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2326
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-eqz v1, :cond_0

    .line 2327
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2328
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2330
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    .line 2332
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2184
    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 2185
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2194
    :goto_0
    return-void

    .line 2189
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2190
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2193
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
