.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisPrime2Helsinki.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_EAGLE_ABOVE_HISPEED_DELAY:I

.field final ID_EAGLE_BOOST:I

.field final ID_EAGLE_BOOSTPULSE_DURATION:I

.field final ID_EAGLE_GO_HISPEED_LOAD:I

.field final ID_EAGLE_HISPEED_FREQ:I

.field final ID_EAGLE_MIN_SAMPLE_TIME:I

.field final ID_EAGLE_TARGET_LOADS:I

.field final ID_EAGLE_TIMER_RATE:I

.field final ID_EAGLE_TIMER_SLACK:I

.field final ID_ENFORCED_MODE:I

.field final ID_HMP_UP_THRESHOLD:I

.field final ID_KFC_ABOVE_HISPEED_DELAY:I

.field final ID_KFC_BOOST:I

.field final ID_KFC_BOOSTPULSE_DURATION:I

.field final ID_KFC_GO_HISPEED_LOAD:I

.field final ID_KFC_HISPEED_FREQ:I

.field final ID_KFC_MIN_SAMPLE_TIME:I

.field final ID_KFC_TARGET_LOADS:I

.field final ID_KFC_TIMER_RATE:I

.field final ID_KFC_TIMER_SLACK:I

.field final ID_LOAD_AVG_PERIOD_MS:I

.field final ID_MULTI_ENTER_LOAD:I

.field final ID_MULTI_EXIT_LOAD:I

.field final ID_SINGLE_ENTER_LOAD:I

.field final ID_SINGLE_EXIT_LOAD:I

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final TAG:Ljava/lang/String;

.field mCameraRecordingDualOn:Z

.field mCameraRecordingOn:Z

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsHangout:Z

.field mIsKnownGameInForeground:Z

.field mIsModeChangeDisabled:Z

.field mIsWhiteListApp:Z

.field mListTargetApp:[Ljava/lang/String;

.field mSIPVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 36
    const-string v0, "SSRMv2:GovernorAdonisPrime2Helsinki"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->TAG:Ljava/lang/String;

    .line 88
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    .line 94
    iput v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->MSG_KNOWN_GAME_FOREGROUND:I

    .line 192
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    .line 194
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    .line 204
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

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

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mListTargetApp:[Ljava/lang/String;

    .line 266
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    .line 97
    const-string v0, "SSRMv2:GovernorAdonisPrime2Helsinki"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 99
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TIMER_RATE:I

    .line 102
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_slack"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TIMER_SLACK:I

    .line 105
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_MIN_SAMPLE_TIME:I

    .line 108
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/hispeed_freq"

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_HISPEED_FREQ:I

    .line 111
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads"

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TARGET_LOADS:I

    .line 114
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_GO_HISPEED_LOAD:I

    .line 117
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_ABOVE_HISPEED_DELAY:I

    .line 120
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/boost"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_BOOST:I

    .line 122
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/boostpulse_duration"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_BOOSTPULSE_DURATION:I

    .line 125
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TIMER_RATE:I

    .line 128
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_slack"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TIMER_SLACK:I

    .line 131
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_MIN_SAMPLE_TIME:I

    .line 134
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/hispeed_freq"

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    .line 137
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads"

    const-string v1, "75 1500000:80 1700000:85 1800000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    .line 141
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_GO_HISPEED_LOAD:I

    .line 144
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000 1000000:99000 1200000:119000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    .line 148
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/boost"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_BOOST:I

    .line 151
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/boostpulse_duration"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_BOOSTPULSE_DURATION:I

    .line 154
    const-string v0, "/sys/kernel/hmp/load_avg_period_ms"

    const-string v1, "32"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    .line 156
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_ENFORCED_MODE:I

    .line 159
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/multi_enter_load"

    const-string v1, "360"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_ENTER_LOAD:I

    .line 162
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/single_enter_load"

    const-string v1, "95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_ENTER_LOAD:I

    .line 165
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/multi_exit_load"

    const-string v1, "240"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_EXIT_LOAD:I

    .line 168
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/single_exit_load"

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_EXIT_LOAD:I

    .line 171
    const-string v0, "/sys/kernel/hmp/up_threshold"

    const-string v1, "700"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_HMP_UP_THRESHOLD:I

    .line 173
    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 272
    return-void
.end method

.method public onFgAppChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    .line 225
    .local v5, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    .line 227
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    .line 228
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mListTargetApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 229
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    :cond_0
    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    .line 235
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 236
    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 238
    .local v3, "msg":Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 239
    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    const-string v7, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v7}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 247
    return-void

    .line 228
    .restart local v6    # "str":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 252
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 278
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 260
    :cond_0
    const-string v0, "Camera_recordingDual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 264
    :cond_1
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_4

    .line 283
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_HMP_UP_THRESHOLD:I

    const-string v1, "1024"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 309
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    if-eqz v0, :cond_2

    .line 310
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 311
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 312
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_EXIT_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 313
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_EXIT_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 316
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    if-nez v0, :cond_9

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    .line 318
    const-string v0, "Mode change is stopped."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    .line 323
    :cond_3
    :goto_1
    return-void

    .line 284
    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    if-eqz v0, :cond_5

    .line 285
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "75 1000000:99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 286
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 287
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    if-eqz v0, :cond_6

    .line 289
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TARGET_LOADS:I

    const-string v1, "70 1200000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 291
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    if-eqz v0, :cond_7

    .line 295
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000 1500000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    if-eqz v0, :cond_0

    .line 298
    :cond_8
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "95 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 299
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 302
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    if-eqz v0, :cond_3

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    .line 321
    const-string v0, "Mode change is restarted."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
