.class public Landroid/hardware/display/SecWifiDisplayUtil;
.super Ljava/lang/Object;
.source "SecWifiDisplayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SecWifiDisplayUtil$1;
    }
.end annotation


# instance fields
.field private final GP_PACKAGE_NAME:Ljava/lang/String;

.field private final GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "SecWifiDisplayUtil"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "com.samsung.groupcast"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_PACKAGE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, ".gp_running_check"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private getCPUPowerSavingMode()I
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_cpu_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPowerSavingMode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "powersavingState2014":I
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "powersavingState":I
    and-int v2, v1, v0

    return v2
.end method

.method private isHDMIConnected()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v3, 0x0

    .line 146
    .local v3, "isHDMIConnected":Z
    iget-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 147
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 149
    .local v0, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 150
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 151
    const/4 v3, 0x1

    .line 149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v4, "SecWifiDisplayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHDMIConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v3
.end method

.method private isHotspotOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "isHotspotOn":Z
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 165
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    :goto_0
    const-string v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHotSpotOn(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v0

    .line 169
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLimitedContentsPlaying()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_limited_contents_playing"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "isP2pConntected":Z
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 181
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 182
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 187
    :goto_0
    const-string v3, "SecWifiDisplayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2pConntected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    .line 185
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSideSyncAppRunning()Z
    .locals 7

    .prologue
    .line 121
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 124
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 126
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 127
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.sec.android.sidesync30.ui.SideSyncActivity"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const-string v5, "SecWifiDisplayUtil"

    const-string v6, "isSideSyncAppRunning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, 0x1

    .line 133
    .end local v2    # "className":Ljava/lang/String;
    :goto_1
    return v5

    .line 126
    .restart local v2    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isSideSyncConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_source_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 140
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 223
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 224
    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWfdStatusOn()Z
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 231
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopPeriodicScanning(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 238
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 239
    .local v2, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 241
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "stop"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 247
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkExceptionalCase()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 71
    :goto_0
    const-string v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExceptionalCase ret value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 72
    :goto_1
    return v2

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isGroupPlayRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v1, 0x7

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHotspotOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    const/4 v1, 0x2

    goto :goto_0

    .line 56
    :cond_3
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    const/4 v1, 0x3

    goto :goto_0

    .line 58
    :cond_4
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncConnected()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncAppRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 59
    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 60
    :cond_6
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getCPUPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 61
    const/4 v1, 0x5

    goto :goto_0

    .line 62
    :cond_7
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isLimitedContentsPlaying()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    const/4 v1, 0x6

    goto :goto_0

    .line 65
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SecWifiDisplayUtil"

    const-string v3, "exception occured while using isScreenMirroringAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 69
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isGroupPlayRunning()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 93
    iget-object v10, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    .local v0, "am":Landroid/app/ActivityManager;
    const v10, 0x7fffffff

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 95
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 96
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 98
    .local v7, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.samsung.groupcast"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    :try_start_0
    iget-object v10, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.groupcast"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 101
    .local v3, "gpContext":Landroid/content/Context;
    const-string v10, ".gp_running_check"

    invoke-virtual {v3, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 103
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    :goto_0
    const/4 v9, 0x1

    .line 117
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    :goto_1
    return v9

    .line 104
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "gpContext":Landroid/content/Context;
    .restart local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v4

    .line 105
    .local v4, "ie":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 107
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 108
    .local v6, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v6    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 111
    .local v1, "fe":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V
    .locals 7
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$WfdAppState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    sget-object v2, Landroid/hardware/display/SecWifiDisplayUtil$1;->$SwitchMap$android$hardware$display$DisplayManager$WfdAppState:[I

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$WfdAppState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 204
    .local v1, "p2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 206
    .local v0, "mWifiP2pChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-direct {p0, v4}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    .line 207
    invoke-virtual {v1, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 210
    .end local v0    # "mWifiP2pChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v1    # "p2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :pswitch_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-direct {p0, v5}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdStatusOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
