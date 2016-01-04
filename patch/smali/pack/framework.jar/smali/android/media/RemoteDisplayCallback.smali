.class public final Landroid/media/RemoteDisplayCallback;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayCallback$1;,
        Landroid/media/RemoteDisplayCallback$Listener;,
        Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteDisplayCallback"

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCpuBooster:Landroid/os/DVFSHelper; = null

.field private static mCpuLockEnabled:Z = false

.field private static final mDefaultFreq:I = 0xf4240

.field private static mDongleVer:Ljava/lang/String;

.field private static mHdcpSuspend:Z

.field private static mIsVideoCase:Z

.field private static mListener:Landroid/media/RemoteDisplayCallback$Listener;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRenameCapablity:Z

.field private static mUpdateURL:Ljava/lang/String;

.field private static mWfdMode:I


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStreamVol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 50
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 54
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 56
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 57
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    .line 58
    sput v1, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 59
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 62
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 66
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 67
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 69
    iput-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    new-instance v1, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method private StartHDCPSuspend()V
    .locals 4

    .prologue
    .line 348
    const-string v2, "RemoteDisplayCallback"

    const-string v3, "StartHDCPSuspend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 351
    .local v0, "r":Landroid/content/res/Resources;
    const v2, 0x1040767

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, "title":Ljava/lang/String;
    const-string v2, "sus"

    invoke-direct {p0, v2, v1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method static synthetic access$100()Landroid/media/RemoteDisplayCallback$Listener;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 47
    sget v0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 47
    sput p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return p0
.end method

.method static synthetic access$400(Landroid/media/RemoteDisplayCallback;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 47
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/RemoteDisplayCallback;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    return v0
.end method

.method static synthetic access$600()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private broadcastDongleUpdateUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleUpdateUrl << Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    return-void
.end method

.method private broadcastDongleVerToFota(Ljava/lang/String;)V
    .locals 4
    .param p1, "Ver"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleVerToFota << Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.START_WFD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 315
    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    return-void
.end method

.method private broadcastWfdConnectionType(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 336
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdConnectionType mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method private lockCPUFreq(I)V
    .locals 9
    .param p1, "minLockFreq"    # I

    .prologue
    .line 124
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 133
    new-instance v5, Landroid/os/DVFSHelper;

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 135
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v5, :cond_2

    .line 136
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    .line 137
    .local v4, "supportedCPUFreqTable":[I
    const/4 v3, 0x0

    .line 139
    .local v3, "minIdx":I
    if-eqz v4, :cond_2

    .line 140
    const/4 v5, 0x0

    aget v5, v4, v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 141
    .local v2, "min":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 142
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_0

    .line 143
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 144
    move v3, v1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v6, "CPU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD lock DVFS_MIN_LIMIT :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v5, 0x1

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 161
    .end local v1    # "i":I
    .end local v2    # "min":I
    .end local v3    # "minIdx":I
    .end local v4    # "supportedCPUFreqTable":[I
    :cond_2
    return-void

    .line 152
    .restart local v1    # "i":I
    .restart local v2    # "min":I
    .restart local v3    # "minIdx":I
    .restart local v4    # "supportedCPUFreqTable":[I
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "cpuBooster.acquire is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 196
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    const/4 v1, 0x0

    .line 198
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/RemoteDisplayCallback$Listener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 79
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 82
    :cond_0
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    :cond_1
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-nez v0, :cond_2

    .line 87
    sput-object p1, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    .line 90
    :cond_2
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 91
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 93
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 94
    sput v3, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 96
    sput-boolean v3, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 98
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAudioManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method private unlockCPUFreq()V
    .locals 3

    .prologue
    .line 164
    sget-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 180
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 183
    :cond_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    return v0
.end method

.method public onNoti(ILjava/lang/String;)V
    .locals 9
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 361
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNoti << msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sparse-switch p1, :sswitch_data_0

    .line 509
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check!! << msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 365
    :sswitch_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "mNoti":Lorg/json/JSONObject;
    const-string v5, "remoteIP"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 369
    const-string v5, "suspend"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 370
    const-string v5, "sink_ver"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 371
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    const-string v6, "AA00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    const/4 v5, 0x0

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 374
    :cond_1
    const-string/jumbo v5, "wlan.wfd.dongle"

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v5, "renameAvailable"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v3    # "mNoti":Lorg/json/JSONObject;
    :goto_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V

    .line 385
    sget-boolean v5, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    if-eqz v5, :cond_2

    .line 386
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->StartHDCPSuspend()V

    .line 391
    :cond_2
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "WFD client connected broadcast sent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 409
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_2
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 410
    sget v4, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 411
    .local v4, "prevWfdMode":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 412
    if-nez v4, :cond_4

    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v5, v8, :cond_4

    .line 413
    sput-boolean v8, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 417
    :goto_2
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNoti received : WFD_NOTI_TO_APP_TRANSPORT_MODE, prevWfdMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWfdMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsVideoCase = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v5, v8, :cond_7

    .line 419
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    sget-boolean v5, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    if-eqz v5, :cond_5

    .line 420
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 421
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 415
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    goto :goto_2

    .line 426
    :cond_5
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_6

    .line 427
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iput v5, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 429
    :cond_6
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get native STREAM_MUSIC volume :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send command: curr stream vol @ tcp start! << "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v5, "vol"

    iget v6, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    :cond_7
    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-direct {p0, v5}, Landroid/media/RemoteDisplayCallback;->broadcastWfdConnectionType(I)V

    .line 438
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 439
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-interface {v5, v6}, Landroid/media/RemoteDisplayCallback$Listener;->onTransportChanged(I)V

    goto/16 :goto_0

    .line 453
    .end local v4    # "prevWfdMode":I
    :sswitch_3
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 455
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v3    # "mNoti":Lorg/json/JSONObject;
    const-string v5, "SinkFwUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    .end local v3    # "mNoti":Lorg/json/JSONObject;
    :goto_3
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/media/RemoteDisplayCallback;->broadcastDongleUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :catch_1
    move-exception v0

    .line 458
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 465
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_4
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 466
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "WFD noti to App - weak network connection.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 468
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5}, Landroid/media/RemoteDisplayCallback$Listener;->onWeakNetwork()V

    goto/16 :goto_0

    .line 474
    :sswitch_5
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 475
    const/4 v2, 0x0

    .line 477
    .local v2, "level":I
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "level"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 483
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_4
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD noti to App - update QoS level : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 486
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5, v2}, Landroid/media/RemoteDisplayCallback$Listener;->onQoSLevelChanged(I)V

    goto/16 :goto_0

    .line 479
    :catch_2
    move-exception v0

    .line 480
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 492
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "level":I
    :sswitch_6
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 493
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "WFD noti to App - WFD_NOTI_TO_APP_HEADSET_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 495
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 363
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1e -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x64 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "res"

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x1

    return v0
.end method
