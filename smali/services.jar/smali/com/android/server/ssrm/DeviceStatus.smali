.class public Lcom/android/server/ssrm/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static sAcConnected:Z

.field private static sBatteyRemaining:I

.field private static sBatteyTemperature:I

.field public static sEmergencyMode:Z

.field public static sKnoxMode:Z

.field private static sPowerConnected:Z

.field private static sPowerSavingMode:Z

.field public static sPowerSavingModeLimitDisplay:Z

.field public static sPowerSavingModeLimitPerformance:Z

.field public static sUltraPowerSavingMode:Z

.field private static sUsbConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    .line 31
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    .line 37
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    .line 43
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUltraPowerSavingMode:Z

    .line 49
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemaining()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyRemaining:I

    return v0
.end method

.method public static getBatteryTemperature()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyTemperature:I

    return v0
.end method

.method public static isAcConnected()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sAcConnected:Z

    return v0
.end method

.method public static isEmergencyMode()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    return v0
.end method

.method public static isKnoxMode()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sKnoxMode:Z

    return v0
.end method

.method public static isPowerConnected()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerConnected:Z

    return v0
.end method

.method public static isPowerSavingMode()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    return v0
.end method

.method public static isPowerSavingModeLimitDisplay()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerSavingModeLimitPerformance()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUltraPowerSavingMode()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUltraPowerSavingMode:Z

    return v0
.end method

.method public static isUsbConnected()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUsbConnected:Z

    return v0
.end method

.method public static setAcConnected(Z)V
    .locals 0
    .param p0, "connected"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sAcConnected:Z

    .line 99
    return-void
.end method

.method public static setBatteryRemaining(I)V
    .locals 0
    .param p0, "percent"    # I

    .prologue
    .line 58
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyRemaining:I

    .line 59
    return-void
.end method

.method public static setBatteryTemperature(I)V
    .locals 0
    .param p0, "temp"    # I

    .prologue
    .line 68
    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyTemperature:I

    .line 69
    return-void
.end method

.method public static setPowerConnected(Z)V
    .locals 0
    .param p0, "connected"    # Z

    .prologue
    .line 88
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sPowerConnected:Z

    .line 89
    return-void
.end method

.method public static setPowerSavingMode(Z)V
    .locals 0
    .param p0, "on"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    .line 25
    return-void
.end method

.method public static setUsbConnected(Z)V
    .locals 0
    .param p0, "connected"    # Z

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sUsbConnected:Z

    .line 79
    return-void
.end method
