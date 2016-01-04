.class public Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DvfsUpThreshold.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DVFS_UT_DEFAULT:I

.field private final DVFS_UT_MAX:I

.field private isFullScreenMode:Z

.field private isJaUpthresholdAppFg:Z

.field private mBrowserBenchmarkOn:Z

.field private mCurrentUpThreshold:I

.field mUpThresholdExceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "SSRMv2:DvfsUpThreshold"

    sput-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5a

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    .line 35
    iput v2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_DEFAULT:I

    .line 37
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_MAX:I

    .line 39
    iput v2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 146
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    .line 42
    const-string v0, "com.alphacloud.castlemaster"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 43
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 44
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 46
    const-string v0, "Gallery"

    const-string v1, "com.sec.android.gallery3d"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "VideoPlayer"

    const-string v1, "com.samsung.everglades.video"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "Video(hidden)"

    const-string v1, "com.sec.android.app.videoplayer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "Camera"

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method protected calculateCurrentThreshold()I
    .locals 5

    .prologue
    const/16 v2, 0x63

    const/16 v1, 0x5a

    .line 126
    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.chrome"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    if-eqz v3, :cond_2

    .line 143
    :cond_1
    :goto_0
    return v1

    .line 131
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    if-eqz v3, :cond_3

    move v1, v2

    .line 132
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "fgPackageName":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isExceptionPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 140
    goto :goto_0
.end method

.method isExceptionPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "newPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 73
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    .line 88
    :cond_0
    return-void
.end method

.method public setBrowserBenchmark(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 149
    sget-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrowserBenchmark:: on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    .line 152
    return-void
.end method

.method protected updateParameters()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->calculateCurrentThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateThresholdSysFS(I)V

    .line 92
    return-void
.end method

.method protected updateThresholdSysFS(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 99
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    .line 101
    .local v0, "DVFS_UT_SYSFS_PATH":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-eq v3, p1, :cond_0

    .line 102
    sget-object v3, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateThresholdSysFS :: new value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput p1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 106
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-eqz v3, :cond_0

    .line 107
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    .line 108
    .local v1, "GAME_MODE_PATH":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    .line 111
    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v1    # "GAME_MODE_PATH":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v1    # "GAME_MODE_PATH":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
