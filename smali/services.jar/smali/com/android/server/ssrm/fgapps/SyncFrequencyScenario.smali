.class public Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SyncFrequencyScenario.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mBrowserDashMode:Z

.field mLastSyncFreq:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 38
    const-string v1, "SSRMv2:SyncFrequencyScenario"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->TAG:Ljava/lang/String;

    .line 137
    const v1, 0x122a00

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mLastSyncFreq:I

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mBrowserDashMode:Z

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/sync_freq_list.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "mSyncFreqAppListFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->registerSyncFreqTestList()V

    .line 46
    :cond_0
    const-string v1, "com.imangi.templerun"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 47
    const-string v1, "com.imangi.templerun2"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 48
    const-string v1, "com.gameloft.android.ANMP.GloftA6HP"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 49
    const-string v1, "com.gameloft.android.ANMP.GloftA7HM"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 50
    const-string v1, "com.rovio.angrybirds"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 51
    const-string v1, "com.alphacloud.castlemaster"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 52
    const-string v1, "com.glu.android.gunbros_free"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.glu.gunbros2"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 54
    const-string v1, "com.facebook.katana"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 55
    const-string v1, "com.google.android.talk"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.kakao.talk"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.whatsapp"

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method calculateCurrentSyncFreq()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const v2, 0x122a00

    .line 107
    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "foregroundPackageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    move v2, v3

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    sget-object v4, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 117
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mBrowserDashMode:Z

    if-eqz v2, :cond_4

    .line 119
    const v2, 0x180600

    goto :goto_0

    .line 121
    :cond_4
    const v2, 0xd7a00

    goto :goto_0

    .line 125
    :cond_5
    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 131
    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->registerPreloadApp()V

    .line 104
    return-void
.end method

.method public onFgAppChanged()V
    .locals 4

    .prologue
    .line 143
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/sync_freq"

    .line 145
    .local v0, "SYNC_FREQ_PATH":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->calculateCurrentSyncFreq()I

    move-result v1

    .line 146
    .local v1, "mCurrentSyncFreq":I
    iget v2, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mLastSyncFreq:I

    if-ne v2, v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iput v1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mLastSyncFreq:I

    .line 150
    const-string v2, "SSRMv2:SyncFrequencyScenario"

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/sync_freq"

    invoke-static {v2, v3, v1}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 155
    return-void
.end method

.method registerPreloadApp()V
    .locals 8

    .prologue
    .line 81
    sget-object v7, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 82
    .local v4, "mPackageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "launcherIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/16 v7, 0x20

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 88
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 91
    .local v5, "packageName":Ljava/lang/String;
    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 93
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 94
    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 99
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method registerSyncFreqTestList()V
    .locals 6

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "buf":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 64
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/sync_freq_list.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    const-string v3, "SSRMv2:SyncFrequencyScenario"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSyncFreqTestList::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 72
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_0

    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    :cond_0
    :goto_2
    return-void

    .line 72
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    move-object v0, v1

    .line 77
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v3

    .line 72
    :goto_4
    if-eqz v0, :cond_3

    .line 73
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 71
    :cond_3
    :goto_5
    throw v3

    .line 75
    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_5

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    goto :goto_3

    .line 71
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 69
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public setBrowserDashMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->mBrowserDashMode:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SyncFrequencyScenario;->onFgAppChanged()V

    .line 162
    return-void
.end method
