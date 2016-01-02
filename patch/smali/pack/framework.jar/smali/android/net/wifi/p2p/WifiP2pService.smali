.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    }
.end annotation


# static fields
.field private static final ACTION_P2P_STOPFIND_TIMER_EXPIRED:Ljava/lang/String; = "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CMD_UNLOAD_P2P_DRIVER_FAILURE:I = 0x23012

.field private static final CMD_UNLOAD_P2P_DRIVER_SUCCESS:I = 0x23011

.field private static final CONNECTION_TIMED_OUT:I = 0x1e

.field private static final DBG:Z = true

.field private static final DEFAULT_STATIC_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final DHCP_RANGE:[Ljava/lang/String;

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final INVITATION_PROCEDURE_TIMED_OUT:I = 0x23033

.field private static final INVITATION_WAIT_TIME_MS:I = 0x7530

.field private static final JB_STYLE:Z = true

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NFC_INTERFACE_DISCOVER_RETRY:I = 0x3

.field private static final NFC_INTERFACE_DISCOVER_TIMEOUT:I = 0x23036

.field private static final NFC_INTERFACE_DISCOVER_TIME_MS:I = 0x2710

.field private static final NFC_P2P_TAG_DETECT:Ljava/lang/String; = "android.btopp.intent.action.P2P_TAG_DETECT"

.field private static final NFC_REQUEST_TIMED_OUT:I = 0x23032

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_ENABLE_PENDING:I = 0x2300a

.field private static final P2P_EXPIRATION_TIME:I = 0x5

.field private static final P2P_GROUP_STARTED_TIMED_OUT:I = 0x23034

.field private static final P2P_INVITATION_WAKELOCK_DURATION:I = 0x7530

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final TIME_ELAPSED_AFTER_CONNECTED:I = 0x23035

.field public static final WIFI_ENABLE_PROCEED:I = 0x23013

.field private static mDisableP2pTimeoutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static mNfcInterfaceDiscTimeoutIndex:I

.field private static mWpsSkip:Z


# instance fields
.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDevicesCnt:I

.field private mConnectedNotification:Landroid/app/Notification;

.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mForegroundAppMessenger:Landroid/os/Messenger;

.field private mForegroundAppPkgName:Ljava/lang/String;

.field private mInterface:Ljava/lang/String;

.field private mInvitationDialog:Landroid/app/AlertDialog;

.field private mInvitationMsg:Landroid/widget/TextView;

.field private mJoinExistingGroup:Z

.field private mLapseTime:I

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mMaximumConnectionDialog:Landroid/app/AlertDialog;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNfcDevicePw:Ljava/lang/String;

.field private mNfcDevicePwId:Ljava/lang/String;

.field private mNfcHashkey:Ljava/lang/String;

.field private mNfcP2pChannel:I

.field private mNfcP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mNfcTriggered:Z

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pInfoStr:Ljava/lang/String;

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistentGroup:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mSoundNotification:Landroid/app/Notification;

.field private mTempoarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTimerIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDialog:Z

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWpsTimer:Landroid/os/CountDownTimer;

.field t_dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 167
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 169
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    .line 170
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    .line 174
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 179
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    .line 273
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mNfcInterfaceDiscTimeoutIndex:I

    .line 341
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.100"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 441
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 160
    iput v12, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    .line 161
    const/16 v6, 0xb

    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    .line 163
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 256
    iput-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 258
    iput-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 264
    iput-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    .line 265
    iput-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    .line 285
    iput-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 287
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 304
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    .line 313
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    .line 317
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    .line 319
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWfdDialog:Z

    .line 322
    iput-byte v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 329
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 351
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcHashkey:Ljava/lang/String;

    .line 352
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePwId:Ljava/lang/String;

    .line 353
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePw:Ljava/lang/String;

    .line 354
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcTriggered:Z

    .line 357
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentGroup:Z

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "@android:style/Theme.DeviceDefault"

    invoke-virtual {v6, v7, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 444
    .local v2, "resId":I
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 447
    const-string v6, "p2p0"

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 448
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    .line 450
    new-instance v6, Landroid/net/NetworkInfo;

    const/16 v7, 0xd

    const-string v8, "WIFI_P2P"

    const-string v9, ""

    invoke-direct {v6, v7, v10, v8, v9}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 452
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.wifi.direct"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 455
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    .line 456
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    const-string v7, "WifiP2pService"

    invoke-virtual {v6, v12, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 457
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    const v7, 0x1000001a

    const-string v8, "WifiP2pService"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 459
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 461
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 462
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-direct {v5, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 463
    .local v5, "timerIntent":Landroid/content/Intent;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTimerIntent:Landroid/app/PendingIntent;

    .line 467
    :try_start_0
    new-instance v6, Landroid/os/DVFSHelper;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const/16 v8, 0xc

    invoke-direct {v6, v7, v8}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 468
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v6, :cond_0

    .line 469
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v6}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    .line 470
    .local v4, "supportedCPUFreqTable":[I
    if-eqz v4, :cond_2

    .line 471
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v7, "CPU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v4    # "supportedCPUFreqTable":[I
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 484
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v7, "WifiP2pService"

    iget-boolean v8, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v6, p0, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 485
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 487
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "ssid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 490
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v3

    .line 491
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_p2p_device_name"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 496
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v6, "com.android.server.enterprise.WFD_DISABLE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v6, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 503
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;

    invoke-direct {v7, p0, v11}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pService$1;

    invoke-direct {v7, p0}, Landroid/net/wifi/p2p/WifiP2pService$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    return-void

    .line 473
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "ssid":Ljava/lang/String;
    .restart local v4    # "supportedCPUFreqTable":[I
    :cond_2
    :try_start_1
    const-string v6, "WifiP2pService"

    const-string v7, "supportedCPUFreqTable = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 476
    .end local v4    # "supportedCPUFreqTable":[I
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    iput-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    goto/16 :goto_0
.end method

.method static synthetic access$10300()I
    .locals 1

    .prologue
    .line 142
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$10304()I
    .locals 1

    .prologue
    .line 142
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$12100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentGroup:Z

    return v0
.end method

.method static synthetic access$12102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentGroup:Z

    return p1
.end method

.method static synthetic access$12200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$12500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$12502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$14100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$14102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$14500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$14502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager$WifiLock;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method static synthetic access$14900(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return v0
.end method

.method static synthetic access$14902(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return p1
.end method

.method static synthetic access$15200()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsSkip:Z

    return v0
.end method

.method static synthetic access$15202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 142
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsSkip:Z

    return p0
.end method

.method static synthetic access$15400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mCpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpResults;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpResults:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$15902(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpResults:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$18700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$18802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$18900(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return v0
.end method

.method static synthetic access$18902(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return p1
.end method

.method static synthetic access$18906(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19002(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$19100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$19300()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$19400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$19500(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$19502(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # B

    .prologue
    .line 142
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$19504(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$19600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$19602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$19700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$19702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$19800(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$20302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$20400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20402(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 142
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$3204()I
    .locals 1

    .prologue
    .line 142
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWfdDialog:Z

    return v0
.end method

.method static synthetic access$5902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWfdDialog:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6002(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return p1
.end method

.method static synthetic access$6100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$6102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$6400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/sec/enterprise/RestrictionPolicy;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTimerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7602(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$7702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$7800(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$7802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$7900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return v0
.end method

.method static synthetic access$7902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 517
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 518
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 519
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempoarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 719
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 720
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pInfoFromNdef([BI)Ljava/lang/String;
    .locals 27
    .param p1, "payload"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 610
    move/from16 v12, p2

    .line 611
    .local v12, "i":I
    const/16 v21, 0x0

    .local v21, "type":I
    const/4 v13, 0x0

    .line 612
    .local v13, "len":I
    aget-byte v22, p1, v12

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x1

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v20, v22, v23

    .line 613
    .local v20, "totalLength":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 614
    .local v7, "devCapa":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 615
    .local v11, "groupCapa":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 616
    .local v6, "devAddr":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 617
    .local v5, "configMethod":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 618
    .local v10, "devType":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 619
    .local v9, "devName":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 621
    .local v16, "ssid":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x2

    .line 622
    :goto_0
    add-int v22, p2, v20

    move/from16 v0, v22

    if-ge v12, v0, :cond_5

    .line 623
    aget-byte v21, p1, v12

    .line 624
    add-int/lit8 v22, v12, 0x1

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x2

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v13, v22, v23

    .line 625
    add-int/lit8 v12, v12, 0x3

    .line 626
    const-string v22, "WifiP2pService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "type : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", len : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 628
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x%02x"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, p1, v12

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->reverseByte(B)B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 629
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x%02x"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v12, 0x1

    aget-byte v26, p1, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->reverseByte(B)B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 630
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 632
    :cond_0
    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 633
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02x:%02x:%02x:%02x:%02x:%02x"

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, p1, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v26, v12, 0x1

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    add-int/lit8 v26, v12, 0x2

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    add-int/lit8 v26, v12, 0x3

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    add-int/lit8 v26, v12, 0x4

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    add-int/lit8 v26, v12, 0x5

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 635
    add-int/lit8 v12, v12, 0x6

    .line 636
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x%02x%02x"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, p1, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v26, v12, 0x1

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 637
    add-int/lit8 v12, v12, 0x2

    .line 638
    aget-byte v22, p1, v12

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x1

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v4, v22, v23

    .line 639
    .local v4, "categoryId":I
    const-string v22, "%02x%02x%02x%02x"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int/lit8 v25, v12, 0x2

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v25, v12, 0x3

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    add-int/lit8 v25, v12, 0x4

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    add-int/lit8 v25, v12, 0x5

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 640
    .local v14, "oui":Ljava/lang/String;
    add-int/lit8 v22, v12, 0x6

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x7

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v17, v22, v23

    .line 641
    .local v17, "subCategoryId":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%d-%s-%d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v14, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 642
    add-int/lit8 v12, v12, 0xa

    .line 643
    aget-byte v22, p1, v12

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x1

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v19, v22, v23

    .line 644
    .local v19, "subType":I
    add-int/lit8 v22, v12, 0x2

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x3

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v18, v22, v23

    .line 645
    .local v18, "subLen":I
    add-int/lit8 v12, v12, 0x4

    .line 646
    const/16 v22, 0x1011

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 647
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v12, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 649
    :cond_1
    add-int v12, v12, v18

    .line 650
    goto/16 :goto_0

    .line 651
    .end local v4    # "categoryId":I
    .end local v14    # "oui":Ljava/lang/String;
    .end local v17    # "subCategoryId":I
    .end local v18    # "subLen":I
    .end local v19    # "subType":I
    :cond_2
    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 652
    add-int/lit8 v22, v12, 0x4

    aget-byte v22, p1, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pService;->mNfcP2pChannel:I

    .line 653
    add-int/lit8 v12, v12, 0x6

    .line 654
    const-string v22, "WifiP2pService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Channel : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcP2pChannel:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 656
    :cond_3
    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 657
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    add-int/lit8 v24, v12, 0x6

    add-int/lit8 v25, v13, -0x6

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 658
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 661
    :cond_4
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 665
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "P2P-DEVICE-FOUND"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " p2p_dev_addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " pri_dev_type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " name=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " config_methods="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dev_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " group_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "devData":Ljava/lang/String;
    new-instance v22, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pService;->mNfcP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 674
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " freq="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcP2pChannel:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " p2p_dev_addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " name=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ssid=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " config_methods="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dev_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " group_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 683
    .local v15, "retData":Ljava/lang/String;
    return-object v15
.end method

.method public getPasswordInfoFromNdef([BI)I
    .locals 11
    .param p1, "payload"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 578
    move v0, p2

    .line 579
    .local v0, "i":I
    const/4 v4, 0x0

    .local v4, "type":I
    const/4 v2, 0x0

    .line 581
    .local v2, "len":I
    aget-byte v5, p1, v0

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 583
    .local v3, "totalLength":I
    add-int/lit8 v0, v0, 0x2

    .line 584
    :goto_0
    if-ge v0, v3, :cond_2

    .line 585
    aget-byte v5, p1, v0

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 586
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v2, v5, v6

    .line 587
    add-int/lit8 v0, v0, 0x4

    .line 588
    const-string v5, "WifiP2pService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/16 v5, 0x102c

    if-ne v4, v5, :cond_3

    .line 590
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    const/16 v5, 0x20

    if-ge v1, v5, :cond_0

    .line 591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcHashkey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02x"

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v0, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcHashkey:Ljava/lang/String;

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x20

    .line 594
    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePwId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%x"

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v0, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePwId:Ljava/lang/String;

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 596
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, -0x22

    invoke-direct {v6, p1, v0, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePw:Ljava/lang/String;

    .line 598
    add-int/lit8 v5, v2, -0x22

    add-int/2addr v0, v5

    .line 606
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v5, v3, 0x2

    return v5

    .line 602
    :cond_3
    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method public initP2pNfcData()V
    .locals 1

    .prologue
    .line 569
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pInfoStr:Ljava/lang/String;

    .line 570
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcHashkey:Ljava/lang/String;

    .line 571
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePwId:Ljava/lang/String;

    .line 572
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcDevicePw:Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcTriggered:Z

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNfcP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 575
    return-void
.end method

.method public isInactiveState()Z
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 703
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 704
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsInactiveState:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    return v0
.end method

.method public reverseByte(B)B
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 687
    invoke-static {p1}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 733
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceConnectivityInternalPermission()V

    .line 734
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(II)V

    .line 735
    return-void
.end method
