.class public final Lcom/android/server/ssrm/fgapps/LowBatteryMode;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "LowBatteryMode.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field mBatteryLevel:I

.field mCpuMaxFrequency:I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mFisrtLowBatteryStepCpuMaxLimit:I

.field mFisrtLowBatteryStepLevel:I

.field mIsCameraPackage:Z

.field mSecondLowBatteryStepCpuMaxLimit:I

.field mSecondLowBatteryStepLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "SSRMv2:LowBatteryMode"

    sput-object v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I

    .line 47
    const v0, 0x19f0a0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    .line 49
    const v0, 0x16e360

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    .line 53
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    .line 55
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mIsCameraPackage:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->initLowBatteryModeParameters()V

    .line 59
    return-void
.end method


# virtual methods
.method changeLowBatteryModeParameters()V
    .locals 5

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 145
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_v2.low_battery_mode"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 147
    const-string v3, "1st_low_batt_step"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 160
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_1

    .line 161
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    :cond_1
    :goto_2
    return-void

    .line 149
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    const-string v3, "2nd_low_batt_step"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v3

    move-object v0, v1

    .line 160
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_3

    .line 161
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    :cond_3
    :goto_4
    throw v3

    .line 151
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    const-string v3, "1st_low_batt_cpu_max"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    goto :goto_0

    .line 153
    :cond_5
    const-string v3, "2nd_low_batt_cpu_max"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 160
    :cond_6
    if-eqz v1, :cond_7

    .line 161
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_5
    move-object v0, v1

    .line 165
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 163
    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_4

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    goto :goto_5

    .line 159
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 157
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method getBatteryLevel()I
    .locals 3

    .prologue
    .line 90
    const-string v1, "dev.ssrm.bat_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 92
    :cond_0
    const/16 v1, -0x3e7

    .line 94
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method initLowBatteryModeParameters()V
    .locals 2

    .prologue
    const v1, 0x155cc0

    .line 131
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    .line 133
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    .line 136
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.low_battery_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->changeLowBatteryModeParameters()V

    .line 139
    :cond_2
    return-void
.end method

.method public onBatteryChange(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 68
    const-string v2, "level"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "level":I
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->getBatteryLevel()I

    move-result v0

    .line 70
    .local v0, "devLevel":I
    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_0

    .line 71
    move v1, v0

    .line 73
    :cond_0
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryTemperature()I

    move-result v2

    if-lez v2, :cond_2

    .line 74
    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    if-eq v2, v3, :cond_1

    .line 75
    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    .line 76
    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    .line 77
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    sget-object v2, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBatteryChange:: mCurrentBatteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    if-eq v1, v2, :cond_1

    .line 83
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    .line 84
    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->updateLowBatteryMode(I)V

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 6

    .prologue
    .line 63
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mContext:Landroid/content/Context;

    const-string v2, "BATT_CPU_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 64
    return-void
.end method

.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 122
    return-void
.end method

.method updateLowBatteryMode(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, "currentCpuMaxFreq":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I

    if-gt p1, v1, :cond_1

    .line 101
    iget v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    .line 108
    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    if-eq v0, v1, :cond_0

    .line 109
    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    .line 110
    sget-object v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLowBatteryMode:: curFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    iget v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 113
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 102
    :cond_1
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I

    if-gt p1, v1, :cond_2

    .line 103
    iget v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method
