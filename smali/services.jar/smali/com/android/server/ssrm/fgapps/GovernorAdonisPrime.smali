.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisPrime.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field ID_ABOVE_HISPEED_DELAY:I

.field ID_ENFORCED_MODE:I

.field ID_GO_HISPEED_LOAD:I

.field ID_HISPEED_FREQ:I

.field ID_MIN_SAMPLE_TIME:I

.field ID_MULTI_ENTER_LOAD:I

.field ID_SINGLE_ENTER_LOAD:I

.field ID_TARGET_LOADS:I

.field ID_TIMER_RATE:I

.field final TAG:Ljava/lang/String;

.field mIsAutoMode:Z

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsBrowserPageLoading:Z

.field mIsCameraRecording:Z

.field mIsChatOnV:Z

.field mIsHeavyAppInForeground:Z

.field mIsTargetAppInForeground:Z

.field mListTargetApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 29
    const-string v0, "SSRMv2:GovernorAdonisPrime"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "74656d706c6572756e"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "636173746c656d6173746572"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "457069634369746164656c"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "616e6772796269726473"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mListTargetApp:[Ljava/lang/String;

    .line 127
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserPageLoading:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    .line 136
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    .line 50
    const-string v0, "SSRMv2:GovernorAdonisPrime"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 51
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "70 600000:70 800000:75 1500000:80 1700000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    .line 53
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1000000:80000 1200000:100000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    .line 56
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "600000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    .line 58
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    .line 60
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    .line 62
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TIMER_RATE:I

    .line 64
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ENFORCED_MODE:I

    .line 66
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    const-string v1, "360"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MULTI_ENTER_LOAD:I

    .line 68
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    const-string v1, "95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_SINGLE_ENTER_LOAD:I

    .line 71
    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 156
    return-void
.end method

.method public onFgAppChanged()V
    .locals 7

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    .line 107
    .local v4, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    .line 108
    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    .line 110
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 111
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mListTargetApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 112
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 118
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 111
    .restart local v5    # "str":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 144
    :cond_0
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 148
    :cond_1
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserPageLoading:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 132
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_3

    .line 166
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-nez v0, :cond_2

    .line 167
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "60 800000:65 1400000:70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v1, "650000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "79000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 173
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_5

    .line 174
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_4

    .line 175
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_4
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "60 800000:65 1400000:70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v1, "650000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 180
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "79000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    if-eqz v0, :cond_7

    .line 184
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    if-eqz v0, :cond_6

    .line 185
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "80 1000000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 650000:100000 1200000:400000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 600000:99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 189
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 650000:100000 1200000:400000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_8

    .line 192
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 650000:95 800000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    if-eqz v0, :cond_9

    .line 195
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 650000:95 800000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    if-eqz v0, :cond_2

    .line 198
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "80 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
