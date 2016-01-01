.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$WfdAppState;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_WFD_PICKER_DLG:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field public static final ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final ACTION_PICK_WFD_NETWORK:Ljava/lang/String; = "com.samsung.wfd.PICK_WFD_NETWORK"

.field public static final ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field private static final BASE:I = 0x22000

.field private static final DEBUG:Z = false

.field public static final DEFAULT:I = -0x1

.field public static final DEVICE_ADDRESS:I = 0x1

.field public static final DEVICE_NAME:I = 0x2

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final EXTRA_CURRENT_RESOLUTION_INFO:Ljava/lang/String; = "curRes"

.field public static final EXTRA_RESOLUTION_INFO:Ljava/lang/String; = "resBitMask"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_WFD_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final FEATURE_SIDESYNC_SINK:I = 0x3

.field public static final FEATURE_SIDESYNC_SOURCE:I = 0x2

.field public static final FEATURE_WIFIDISPLAY_SINK:I = 0x1

.field public static final FEATURE_WIFIDISPLAY_SOURC:I = 0x0

.field public static final FRIDGE:I = 0x5

.field public static final HOMESYNC_MIRROR_MOUSE:I = 0x1

.field public static final HOMESYNC_SCREEN_MIRRORING:I = 0x2

.field public static final MULTI_ANGLE_RECORDER:I = 0x4

.field public static final PAUSE_RTSP:I = 0x2206e

.field public static final POPUP_CAUSE_AIRPLANE_MODE_ON:I = 0x2208c

.field public static final POPUP_CAUSE_ALERT_RESTART:I = 0x22073

.field public static final POPUP_CAUSE_BLUETOOTH_OR_EARPHONE_ON:I = 0x2207c

.field public static final POPUP_CAUSE_CONNECTING:I = 0x2208a

.field public static final POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final POPUP_CAUSE_DIALOG_ERROR_CONNECT_FAILED:I = 0x2208b

.field public static final POPUP_CAUSE_DONGLE_UPDATE:I = 0x22078

.field public static final POPUP_CAUSE_DONGLE_UPDATE_RESULT:I = 0x22079

.field public static final POPUP_CAUSE_EARPHONE_OR_BT_CONNECTED:I = 0x2208e

.field public static final POPUP_CAUSE_HDMI_BUSY:I = 0x22074

.field public static final POPUP_CAUSE_HDMI_CONNECTED:I = 0x2208d

.field public static final POPUP_CAUSE_HOTSPOT_BUSY:I = 0x22075

.field public static final POPUP_CAUSE_INVALID_HDCP_KEY:I = 0x22081

.field public static final POPUP_CAUSE_LIMITED_PLAYBACK_ENABLED:I = 0x22086

.field public static final POPUP_CAUSE_LIMITED_RECORDING_ENABLED:I = 0x22087

.field public static final POPUP_CAUSE_P2P_BUSY:I = 0x22072

.field public static final POPUP_CAUSE_POWER_SAVING_ENABLED:I = 0x22084

.field public static final POPUP_CAUSE_POWER_SAVING_MODE_DISABLED:I = 0x22089

.field public static final POPUP_CAUSE_POWER_SAVING_MODE_ENABLED:I = 0x22088

.field public static final POPUP_CAUSE_SBEAM_BUSY:I = 0x22076

.field public static POPUP_CAUSE_SCANNING_BYNFC:I = 0x0

.field public static final POPUP_CAUSE_SIDE_SYNC_RUNNING:I = 0x22085

.field public static final POPUP_CAUSE_SPLIT_WINDOW:I = 0x2207f

.field public static final POPUP_CAUSE_TERMINATE:I = 0x22070

.field public static final PRIMARY_DEVICE_TYPE:I = 0x3

.field public static final REMOTE_VIEWFINDER:I = 0x0

.field public static final RESUME_RTSP:I = 0x2206d

.field public static final SETPARAM_TYPE_WFD_ENGINE:I = 0x1388

.field public static final SETPARAM_TYPE_WFD_SERVICE:I = 0x1389

.field public static final SIDE_SYNC:I = 0x3

.field public static final START_RTSP:I = 0x2206b

.field public static final STOP_RTSP:I = 0x2206c

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field public static final UPDATE_RESOURCES:I = 0x22080

.field public static final VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final WIFIDISPLAY_DETACH_SETTINGS:Ljava/lang/String; = "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

.field public static final WIFIDISPLAY_DETACH_WFD_BROKER:Ljava/lang/String; = "android.intent.action.DETACH_WFD_BROKER"

.field public static final WIFIDISPLAY_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

.field public static final WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

.field public static final WIFIDISPLAY_PARAM_CHANGED_NOTIFICATION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_REQ"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final WIFIDISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final WIFIDISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final WIFIDISPLAY_WEAK_NETWORK:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mLock:Ljava/lang/Object;

.field private final mTempDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    const v0, 0x2208f

    sput v0, Landroid/hardware/display/DisplayManager;->POPUP_CAUSE_SCANNING_BYNFC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    .line 396
    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 397
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 399
    new-instance v0, Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-direct {v0, p1}, Landroid/hardware/display/SecWifiDisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    .line 400
    return-void
.end method

.method private addAllDisplaysLocked(Ljava/util/ArrayList;[I)V
    .locals 4
    .param p2, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 463
    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 464
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .param p2, "displayIds"    # [I
    .param p3, "matchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 473
    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 474
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 477
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "assumeValid"    # Z

    .prologue
    .line 483
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 484
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 485
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    :cond_0
    :goto_0
    return-object v0

    .line 490
    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkExceptionalCase()I
    .locals 2

    .prologue
    .line 964
    const-string v0, "DisplayManager"

    const-string v1, "checkExceptionalCase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-virtual {v0}, Landroid/hardware/display/SecWifiDisplayUtil;->checkExceptionalCase()I

    move-result v0

    return v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .locals 1
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 740
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    .line 741
    return-void
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I

    .prologue
    .line 680
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public disableWifiDisplay()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disableWifiDisplay()V

    .line 812
    return-void
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 599
    return-void
.end method

.method public disconnectWifiDisplayExt()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplayExt()V

    .line 776
    return-void
.end method

.method public enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 1
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 789
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 790
    return-void
.end method

.method public enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->enableWfdServiceWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public getConnectedDisplayInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 909
    const-string v0, "The getConnectedDisplayInfo() is deprecated. use the getWifiDisplayStatus()"

    .line 910
    .local v0, "tmp":Ljava/lang/String;
    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-object v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 412
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    .line 444
    .local v0, "displayIds":[I
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 446
    if-nez p1, :cond_1

    .line 447
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Landroid/hardware/display/DisplayManager;->addAllDisplaysLocked(Ljava/util/ArrayList;[I)V

    .line 454
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 448
    :cond_1
    :try_start_2
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 450
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 451
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 452
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addPresentationDisplaysLocked(Ljava/util/ArrayList;[II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v1

    .line 458
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 980
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDisplayBridgeStatus()I
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayBridgeStatus()I

    move-result v0

    return v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public isScreenMirroringAvailable()Z
    .locals 2

    .prologue
    .line 953
    const-string v0, "DisplayManager"

    const-string v1, "isScreenMirroringAvailable was deprecated. Use checkExceptionalCase() instead. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method public isSinkAvailable()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSinkAvailable()Z

    move-result v0

    return v0
.end method

.method public isSourceAvailable()Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSourceAvailable()Z

    move-result v0

    return v0
.end method

.method public isWfdEngineRunning()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isWfdEngineRunning()Z

    move-result v0

    return v0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isWifiDisplayBridgeAvailable()Z

    move-result v0

    return v0
.end method

.method public notifyContentFinish()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->notifyContentFinish()V

    .line 749
    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->notifyEnterHomeSyncApp()V

    .line 873
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->notifyExitHomeSyncApp()V

    .line 884
    return-void
.end method

.method public pauseWifiDisplay()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    .line 585
    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 515
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 516
    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/ExtendedDisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 510
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V

    .line 511
    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 944
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->renameDongle(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public restartWifiDisplay()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->restartWifiDisplay()V

    .line 827
    return-void
.end method

.method public resumeWifiDisplay()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    .line 590
    return-void
.end method

.method public scanWifiDisplays()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->scanWifiDisplays()V

    .line 758
    return-void
.end method

.method public setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V
    .locals 3
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$WfdAppState;

    .prologue
    .line 987
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$WfdAppState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mWifiDisplayUtil:Landroid/hardware/display/SecWifiDisplayUtil;

    invoke-virtual {v0, p1}, Landroid/hardware/display/SecWifiDisplayUtil;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 989
    return-void
.end method

.method public setParameter(IILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setParameter(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWifiDisplayScan()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    .line 551
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopScanWifiDisplays()V

    .line 767
    return-void
.end method

.method public stopWifiDisplayScan()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    .line 563
    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .prologue
    .line 534
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 535
    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/ExtendedDisplayListener;

    .prologue
    .line 529
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/ExtendedDisplayListener;)V

    .line 530
    return-void
.end method
