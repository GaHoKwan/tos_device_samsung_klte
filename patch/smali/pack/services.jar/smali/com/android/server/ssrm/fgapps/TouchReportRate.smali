.class public Lcom/android/server/ssrm/fgapps/TouchReportRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TouchReportRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;


# instance fields
.field final REPORT_RATE_DEFAULT:I

.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field mLastReportRate:I

.field mSIPVisible:Z

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 35
    const-string v0, "SSRMv2:TouchReportRate"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mSIPVisible:Z

    .line 41
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->REPORT_RATE_DEFAULT:I

    .line 43
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    .line 45
    iput v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mUserId:I

    .line 48
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 53
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    .line 55
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 60
    return-void
.end method

.method public onLockScreenRelease()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    .line 98
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    .line 108
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    .line 93
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mSIPVisible:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    .line 66
    return-void
.end method

.method public onUltraPowerSavingModeChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TouchReportRate;->updateTouchReportRate()V

    .line 103
    return-void
.end method

.method updateTouchReportRate()V
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "newValue":I
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 81
    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    if-eq v1, v0, :cond_0

    .line 82
    iput v0, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    .line 83
    const-string v1, "SSRMv2:TouchReportRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report_rate,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-boolean v1, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "dev.ssrm.report_rate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    if-eqz v1, :cond_4

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
