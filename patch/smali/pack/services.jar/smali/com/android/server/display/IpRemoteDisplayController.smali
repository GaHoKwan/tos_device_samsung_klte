.class final Lcom/android/server/display/IpRemoteDisplayController;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;,
        Lcom/android/server/display/IpRemoteDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IpRemoteDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mBridgeReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mContext:Landroid/content/Context;

.field private mDebugEnable:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mPrevNativeDisposeCompleted:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayOnSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 100
    iput-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 101
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 105
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    .line 113
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDebugEnable:Z

    .line 115
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 116
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    .line 177
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$2;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    .line 766
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$12;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$12;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 119
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .line 122
    new-instance v3, Landroid/media/WFDUibcManager;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 162
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 76
    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayerByWBS(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 12
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I
    .param p6, "devicetype"    # I

    .prologue
    .line 611
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " display: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$10;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$10;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v1, p2, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v1, p3, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    .line 626
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 627
    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 629
    .local v3, "oldSurface":Landroid/view/Surface;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay << display:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay << width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " height:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 633
    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 634
    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    .line 635
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    .line 636
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    .line 638
    move/from16 v10, p6

    .line 640
    .local v10, "connectedMode":I
    iget-object v11, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$11;

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/IpRemoteDisplayController$11;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIII)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "connectedMode":I
    :cond_2
    return-void
.end method

.method private checkDebugLogEnable()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "secmm.wfds.ipc"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "IpRemoteDisplayController debug log enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDebugEnable:Z

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDebugEnable:Z

    goto :goto_0
.end method

.method private computeFeatureState()I
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 8
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x0

    .line 677
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private disableWifiDisplay(I)V
    .locals 4
    .param p1, "connectedMode"    # I

    .prologue
    .line 416
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableWifiDisplay currenct mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_0
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Disconnect is called with disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 586
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnecting()V

    .line 588
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    .line 589
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 592
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 594
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    .line 598
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    .line 605
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableWifiDisplay(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 526
    if-gez p1, :cond_0

    .line 527
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    .line 538
    move v0, p1

    .line 540
    .local v0, "reqDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$9;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/display/IpRemoteDisplayController$9;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 534
    .end local v0    # "reqDevType":I
    :cond_1
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridge is null, then failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 264
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->checkDebugLogEnable()V

    .line 266
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_0

    .line 411
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableWifiDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deviceType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move v0, p3

    .line 274
    .local v0, "devicetype":I
    const/4 v2, 0x4

    invoke-direct {p0, v5, v2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 276
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$5;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$5;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-static {v2, v3}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 316
    invoke-virtual {p0, v5}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    .line 319
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v2}, Landroid/media/WFDUibcManager;->start()Z

    .line 321
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestEnable processing init option :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-nez p4, :cond_1

    .line 325
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v1, "initParam":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p3}, Lcom/android/server/display/IpRemoteDisplayController;->requestDataSetting(Lorg/json/JSONObject;I)V

    .line 327
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .line 330
    .end local v1    # "initParam":Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 331
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRemoteDIsplayInterface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initParam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$6;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v4, p4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 409
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 667
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 430
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchWfdPlayer deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$7;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method private launchWfdPlayerByWBS(ILjava/net/InetAddress;)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 555
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 556
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayer(ILjava/net/InetAddress;)V

    goto :goto_0

    .line 563
    :cond_2
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridge is null, then failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFeatureState()V
    .locals 3

    .prologue
    .line 465
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "reportFeatureState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->computeFeatureState()I

    move-result v0

    .line 467
    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$8;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method private requestDataSetting(Lorg/json/JSONObject;I)V
    .locals 16
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "deviceType"    # I

    .prologue
    .line 700
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestDataSetting static : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    packed-switch p2, :pswitch_data_0

    .line 735
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZ)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 703
    :pswitch_0
    const/16 v3, 0x500

    const/16 v4, 0x2d0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZ)V

    goto :goto_0

    .line 707
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    .line 708
    .local v15, "wm":Landroid/view/WindowManager;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 709
    const/16 v3, 0x500

    .line 710
    .local v3, "wmWidth":I
    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 711
    .local v4, "wmHeight":I
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device\'s window height:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sparse-switch v4, :sswitch_data_0

    .line 719
    const/16 v4, 0x2d0

    .line 722
    :goto_1
    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZ)V

    goto :goto_0

    .line 716
    :sswitch_0
    const/16 v4, 0x320

    .line 717
    goto :goto_1

    .line 726
    .end local v3    # "wmWidth":I
    .end local v4    # "wmHeight":I
    .end local v15    # "wm":Landroid/view/WindowManager;
    :pswitch_2
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZ)V

    goto :goto_0

    .line 729
    :pswitch_3
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZ)V

    goto/16 :goto_0

    .line 732
    :pswitch_4
    const/16 v7, 0x356

    const/16 v8, 0x1e0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZ)V

    goto/16 :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 713
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method private requestPopup(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    .line 484
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IpRemoteDisplayController"

    const-string/jumbo v3, "unable to start WfdBroker activity "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendDisplayEventToExtendedListener(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 741
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    return-void
.end method

.method private setParamData(Lorg/json/JSONObject;IIIZZIZZ)V
    .locals 3
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "use_hdcp"    # Z
    .param p6, "use_audio"    # Z
    .param p7, "qoslevel"    # I
    .param p8, "use_uibc"    # Z
    .param p9, "use_pdm"    # Z

    .prologue
    .line 685
    :try_start_0
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 686
    const-string v1, "height"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 687
    const-string v1, "fps"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 688
    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 689
    const-string/jumbo v1, "use_audio"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 690
    const-string v1, "qoslevel"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 691
    const-string/jumbo v1, "use_uibc"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 692
    const-string/jumbo v1, "use_pdm"

    invoke-virtual {p1, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "IpRemoteDisplayController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryCommunication(I)V
    .locals 3
    .param p1, "requestType"    # I

    .prologue
    .line 515
    move v0, p1

    .line 517
    .local v0, "requestDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSource(I)I

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is not avaiable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 3
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "requestType"    # I

    .prologue
    .line 497
    move v0, p2

    .line 498
    .local v0, "requestDevType":I
    if-eqz p1, :cond_0

    .line 499
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 505
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I

    .line 511
    :goto_0
    return-void

    .line 501
    :cond_0
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wrong sinkDevice info. Check the parameter..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_1
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 663
    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 664
    return-void
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 780
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "Intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 784
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 790
    return-void
.end method

.method public connectWfdBridgeServer(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inet"    # Ljava/net/InetAddress;

    .prologue
    .line 793
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "connectWfdBridgeServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object v0, p1

    .line 797
    .local v0, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v1, :cond_0

    .line 798
    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 799
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->connect()V

    .line 801
    :cond_0
    return-void
.end method

.method public disconnectWfdBridgeServer()V
    .locals 2

    .prologue
    .line 804
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "disconnectWfdBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    .line 806
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->disconnect()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer is already null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiDisplayBridgeStatus()I
    .locals 4

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 837
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    const/4 v0, 0x1

    .line 841
    :cond_0
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiDisplayBridgeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v0
.end method

.method public isWfdEngineRunning()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, 0x1

    .line 830
    :goto_0
    return v0

    .line 829
    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyBridgeStatus(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 853
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 854
    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 2

    .prologue
    .line 757
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 759
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 2

    .prologue
    .line 762
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 764
    return-void
.end method

.method public requestDisableWifiDisplay(I)I
    .locals 2
    .param p1, "connectedMode"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$4;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "requestEnableWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$3;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 3
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 235
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestEnableWifiDisplay deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    packed-switch p2, :pswitch_data_0

    .line 246
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Wrong device Type! Check your device type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 240
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(I)V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestPause()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 748
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 754
    :cond_0
    return-void
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 822
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v0, :cond_1

    .line 819
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "updateClientDevice mWfdBridgeServer is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    :cond_1
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "updateClientDevice SEC_PRODUCT_FEATURE_WLAN_WIFIDISPLAY_SINK is false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
