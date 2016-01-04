.class public final Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;
.super Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.source "AirViewOnOff.java"


# instance fields
.field FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

.field mSetupWizardFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

    .line 31
    sget-object v0, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    const-string v1, "j6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->checkSetupWizardFinished()V

    .line 35
    return-void
.end method


# virtual methods
.method protected calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;)I
    .locals 3
    .param p1, "deviceInfo"    # Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;
    .param p2, "settingInfo"    # Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    if-nez v2, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->checkSetupWizardFinished()V

    .line 49
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    if-nez v2, :cond_1

    .line 50
    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    const-string v2, "Setup wizard is foreground yet."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isGripVolumeDown()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isClearCoverOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isFingerHoverOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isLockScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->FEATURE_DISABLE_AIRVIEW_IN_LANDSCAPE_MODE:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isLandscapeMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isStatusBarVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isBrowserMainPageVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->isMagnifierOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->isSIPVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public checkSetupWizardFinished()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    const-string v2, "FINISH"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    .line 40
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;->mSetupWizardFinished:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    .line 43
    :cond_0
    return-void
.end method
