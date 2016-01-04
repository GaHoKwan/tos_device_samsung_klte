.class public Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
.super Ljava/lang/Object;
.source "WifiManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerAdapter"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static mWifiService:Landroid/net/wifi/IWifiManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 61
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiService:Landroid/net/wifi/IWifiManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addDns(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "dns"    # Ljava/net/InetAddress;

    .prologue
    .line 85
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 88
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 89
    return-void
.end method

.method public forget(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 73
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiService:Landroid/net/wifi/IWifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->removeNetworkByMDM(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WifiManagerAdapter"

    const-string v2, "forget - failed to get wifi service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prefixLengthToNetmaskInt(I)I
    .locals 1
    .param p1, "prefixLength"    # I

    .prologue
    .line 81
    invoke-static {p1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v0

    return v0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 93
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WifiManagerAdapter"

    const-string v2, "save - failed to get wifi service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method
