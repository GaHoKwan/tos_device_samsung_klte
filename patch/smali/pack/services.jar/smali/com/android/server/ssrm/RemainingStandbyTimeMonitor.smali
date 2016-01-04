.class public Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;
.super Ljava/lang/Object;
.source "RemainingStandbyTimeMonitor.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mBURInPowerSavingMode:I

.field mBURInPowerSavingMode3G:I

.field mBURInPowerSavingMode4G:I

.field mBURInUltraPowerSavingMode:I

.field mBatteryCapacity:I

.field mLeftUsageTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "SSRMv2:RemainingStandbyTimeMonitor"

    sput-object v0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    .line 25
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    .line 27
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    .line 29
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    .line 31
    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mLeftUsageTime:J

    .line 36
    invoke-virtual {p0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->setBatteryUsageInformation()V

    .line 37
    return-void
.end method


# virtual methods
.method getStandbyTimeInPowerSavingMode()I
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryRemaining()I

    move-result v0

    .line 49
    .local v0, "level":I
    iget v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v2, v3

    .line 51
    .local v1, "stanbyTime":I
    sget-object v2, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStandbyTimeInUltraPowerSavingMode: standby time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return v1
.end method

.method getStandbyTimeInUltraPowerSavingMode()I
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryRemaining()I

    move-result v0

    .line 41
    .local v0, "level":I
    iget v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v2, v3

    .line 43
    .local v1, "stanbyTime":I
    sget-object v2, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStandbyTimeInUltraPowerSavingMode: standby time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v1
.end method

.method setBatteryUsageInformation()V
    .locals 5

    .prologue
    const v4, 0x445c0

    const/16 v3, 0x3a5

    const/16 v2, 0x33e

    const/16 v1, 0x2ee

    .line 56
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v0, :cond_0

    .line 57
    iput v4, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    .line 58
    iput v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    .line 59
    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    .line 60
    iput v1, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    .line 61
    iget v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    iget v1, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    iput v4, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBatteryCapacity:I

    .line 64
    iput v3, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInUltraPowerSavingMode:I

    .line 65
    iput v2, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    .line 66
    iput v1, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    .line 67
    iget v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode3G:I

    iget v1, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode4G:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->mBURInPowerSavingMode:I

    goto :goto_0
.end method
