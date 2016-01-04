.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Interactive.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field DEFAULT_BOOST_MS:Ljava/lang/String;

.field DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

.field DEFAULT_HISPEED_FREQ:Ljava/lang/String;

.field DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

.field DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

.field DEFAULT_TARGET_LOADS:Ljava/lang/String;

.field DEFAULT_TIMER_RATE:Ljava/lang/String;

.field final PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field final PATH_BOOST_MS:Ljava/lang/String;

.field final PATH_ENFORCED_MODE:Ljava/lang/String;

.field final PATH_GO_HISPEED_LOAD:Ljava/lang/String;

.field final PATH_HISPEED_FREQ:Ljava/lang/String;

.field final PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

.field final PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field final PATH_SYNC_THRESHOLD:Ljava/lang/String;

.field final PATH_TARGET_LOADS:Ljava/lang/String;

.field final PATH_TIMER_RATE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsHeavyAppInForeground:Z

.field mIsHighCpuLoadGame:Z

.field mIsPreloadAppInForeground:Z

.field mIsScreenOffInCall:Z

.field mIsSpecialAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 34
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    .line 36
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    .line 38
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 40
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    .line 42
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 44
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 46
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    .line 48
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 50
    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    .line 52
    const-string v1, "/sys/module/cpu_boost/parameters/sync_threshold"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    .line 54
    const-string v1, "/sys/module/cpu_boost/parameters/boost_ms"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    .line 74
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 88
    const-string v1, "636f6d2e696d616e67692e74656d706c6572756e"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 90
    const-string v1, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f667441364850"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 93
    const-string v1, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744137484d"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 96
    const-string v1, "636f6d2e726f76696f2e616e6772796269726473"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 98
    const-string v1, "636f6d2e616c706861636c6f75642e636173746c656d6173746572"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 100
    const-string v1, "636f6d2e676c752e616e64726f69642e67756e62726f735f66726565"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 102
    const-string v1, "636f6d2e676c752e67756e62726f7332"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 104
    const-string v1, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 106
    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 108
    const-string v1, "636f6d2e6b616b616f2e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 110
    const-string v1, "636f6d2e7768617473617070"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 112
    const-string v1, "636f6d2e747769747465722e616e64726f6964"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 114
    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e676d"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 116
    :try_start_0
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 117
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 118
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 119
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 120
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 121
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 122
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 124
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/module/cpu_boost/parameters/sync_threshold"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 125
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/module/cpu_boost/parameters/boost_ms"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 150
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 128
    const-string v1, "99"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 129
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 130
    const-string v1, "40000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 131
    const-string v1, "85 1400000:90 1700000:95"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 132
    const-string v1, "20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 133
    const-string v1, "100000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 135
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 136
    const-string v1, "20"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BOOST_MS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    throw v1
.end method


# virtual methods
.method public onBrowserDashMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 196
    return-void
.end method

.method public onFgAppChanged()V
    .locals 7

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    .line 166
    .local v5, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    .line 167
    .local v1, "isHeavyAppInForeground":Z
    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 168
    .local v0, "isBrowserForeground":Z
    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v3

    .line 169
    .local v3, "isPreloadAppForeground":Z
    const/4 v2, 0x0

    .line 172
    .local v2, "isHighCpuLoadGame":Z
    const-string v6, "636f6d2e696d616e67692e74656d706c6572756e32"

    invoke-static {v6}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f6674444d484d"

    invoke-static {v6}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    :cond_2
    sget-boolean v6, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    if-eqz v6, :cond_3

    .line 177
    const/4 v2, 0x1

    .line 181
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-ne v6, v0, :cond_4

    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-ne v6, v2, :cond_4

    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-ne v6, v1, :cond_4

    iget-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-eq v6, v3, :cond_0

    .line 184
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    .line 187
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 156
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    .line 214
    .local v0, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v1, :cond_0

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 218
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 226
    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "SSRMv2:GovernorSD8974Interactive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 207
    :cond_0
    return-void
.end method

.method public updateParameters()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateSyncThresholdParametersForAll()V

    .line 231
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForTablet()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForDefault()V

    goto :goto_0
.end method

.method public updateParametersForDefault()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_2

    .line 322
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateParametersForTablet()V
    .locals 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_1

    .line 264
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_1
    return-void

    .line 260
    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_3

    .line 275
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_3
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateSyncThresholdParametersForAll()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 240
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 253
    :cond_0
    :goto_0
    const-string v1, "/sys/module/cpu_boost/parameters/sync_threshold"

    invoke-static {v1, v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 242
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v1, :cond_3

    .line 243
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 244
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-eqz v1, :cond_4

    .line 245
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v1, :cond_5

    .line 247
    const-string v0, "1190400"

    goto :goto_0

    .line 248
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v1, :cond_7

    .line 249
    :cond_6
    const-string v0, "652800"

    goto :goto_0

    .line 250
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    if-eqz v1, :cond_0

    .line 251
    :cond_8
    const-string v0, "960000"

    goto :goto_0
.end method
