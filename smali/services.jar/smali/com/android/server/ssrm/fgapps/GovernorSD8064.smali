.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8064;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8064.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsHeavyAppInForeground:Z

.field mIsLcdOff:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 29
    const-string v0, "SSRMv2:GovernorSD8064"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->TAG:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    .line 32
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 5

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    .local v1, "isLcdOff":Z
    sget-object v4, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v3

    .line 63
    .local v3, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, "isHeavyAppInForeground":Z
    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    if-ne v4, v0, :cond_2

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    if-eq v4, v1, :cond_0

    .line 65
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateGovernorParameter()V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateGovernorParameter()V

    .line 52
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateGovernorParameter()V

    .line 46
    return-void
.end method

.method public updateGovernorParameter()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 74
    const-string v0, "sampling_down_factor"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 75
    const-string v0, "sampling_rate"

    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v0, "sync_freq"

    const v1, 0x17e530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 77
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->mIsLcdOff:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "sampling_rate"

    const v1, 0x7a120

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v0, "up_threshold"

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 82
    const-string v0, "sampling_down_factor"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 83
    const-string v0, "sampling_rate"

    const v1, 0xc350

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 84
    const-string/jumbo v0, "sync_freq"

    const v1, 0xe01f0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->updateParameter(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateParameter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 90
    const-string v0, "SSRMv2:GovernorSD8064"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/ssrm/fgapps/GovernorSD8064;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method
