.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final FIREWALL_POLICY_SERVICE:Ljava/lang/String; = "FirewallPolicy"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String;

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field static final NUM_OF_CONTAINER:I = 0x2

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private isMarketChainCreated:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mCon:Landroid/net/IConnectivityManager;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsOnline:Z

.field private mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/firewall/FirewallPolicyCache;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string v1, "samsung_proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "samsung_log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .line 151
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "wifi"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 122
    const-string v2, "android.intent.action.USER_ADDED"

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    .line 3617
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 3653
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 175
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    .line 176
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 178
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    .line 179
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->start()V

    .line 181
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 182
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v1, "filterConn":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Ljava/lang/Process;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/app/enterprise/ContextInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method private addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1419
    packed-switch p3, :pswitch_data_0

    .line 1441
    :goto_0
    return-void

    .line 1422
    :pswitch_0
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1424
    :try_start_0
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1428
    :pswitch_1
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1430
    :try_start_1
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1434
    :pswitch_2
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1436
    :try_start_2
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .local p6, "duplicates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1496
    const-string v4, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRulesToDb enter containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const/4 v0, 0x0

    .line 1498
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1499
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    const/4 v1, -0x1

    .line 1500
    .local v1, "index":I
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1501
    add-int/lit8 v1, v1, 0x1

    .line 1502
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "rule":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p4, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1504
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1507
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "cv":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1508
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1510
    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    if-eqz p5, :cond_2

    .line 1512
    const-string v4, "enabled"

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :goto_1
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string/jumbo v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1518
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1522
    .end local v3    # "rule":Ljava/lang/String;
    :goto_2
    return v4

    .line 1514
    .restart local v3    # "rule":Ljava/lang/String;
    :cond_2
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1522
    .end local v3    # "rule":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private applyBasicRules(IILjava/util/List;II)Z
    .locals 18
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p4, "type"    # I
    .param p5, "jumpAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 749
    .local p3, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v5, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v9, "duplicateIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyBasicRules() containerId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " jumpAction:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 756
    .local v17, "rule":Ljava/lang/String;
    const-string v3, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 757
    .local v16, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 758
    const-string v3, "FirewallPolicy"

    const-string v4, "applyBasicRules() parameters not mathced"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v3, 0x0

    .line 839
    .end local v16    # "parameters":[Ljava/lang/String;
    .end local v17    # "rule":Ljava/lang/String;
    :goto_1
    return v3

    .line 761
    .restart local v16    # "parameters":[Ljava/lang/String;
    .restart local v17    # "rule":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v16, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 762
    .local v12, "args":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v10, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v11, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "host"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    const-string v3, "port"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    const-string v3, "portLocation"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const/4 v3, 0x1

    aget-object v3, v12, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 771
    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    const-string v3, "default"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .line 789
    .local v15, "jsonRule":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    .end local v15    # "jsonRule":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 775
    const-string v3, "networkInterface"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    const/4 v3, 0x2

    aget-object v3, v16, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    const-string v3, "app"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .restart local v15    # "jsonRule":Lorg/json/JSONObject;
    goto :goto_2

    .line 781
    .end local v15    # "jsonRule":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "packageName"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    const-string v3, "networkInterface"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    const/4 v3, 0x2

    aget-object v3, v16, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    const/4 v3, 0x3

    aget-object v3, v16, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    const-string v3, "app"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .restart local v15    # "jsonRule":Lorg/json/JSONObject;
    goto :goto_2

    .line 791
    .end local v10    # "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "args":[Ljava/lang/String;
    .end local v15    # "jsonRule":Lorg/json/JSONObject;
    .end local v16    # "parameters":[Ljava/lang/String;
    .end local v17    # "rule":Ljava/lang/String;
    :cond_3
    const-string v7, ""

    .line 793
    .local v7, "jumpActionStr":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 794
    const-string v7, "allow"

    .line 803
    :goto_3
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v13

    .line 805
    .local v13, "enabledUid":I
    move/from16 v0, p2

    if-ne v13, v0, :cond_6

    .line 806
    const/4 v8, 0x1

    .line 812
    .local v8, "enabled":Z
    :goto_4
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    .line 815
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 818
    if-eqz v8, :cond_7

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    .line 795
    .end local v8    # "enabled":Z
    .end local v13    # "enabledUid":I
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_5

    .line 796
    const-string v7, "deny"

    goto :goto_3

    .line 799
    :cond_5
    const-string v3, "FirewallPolicy"

    const-string v4, "applyBasicRules() jumpAction not mathced"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 808
    .restart local v13    # "enabledUid":I
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "enabled":Z
    goto :goto_4

    .line 823
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 827
    :cond_8
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    .line 829
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 830
    if-eqz v8, :cond_9

    .line 832
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    .line 835
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 839
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private applyBasicRulesToIptables(ILjava/util/List;III)Z
    .locals 29
    .param p1, "containerId"    # I
    .param p3, "type"    # I
    .param p4, "jumpAction"    # I
    .param p5, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 996
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyBasicRulesToIptables... adminUid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " containerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " jumpAction:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/16 v16, 0x0

    .line 999
    .local v16, "appUids":[I
    const-string v12, ""

    .line 1000
    .local v12, "networkInterface":Ljava/lang/String;
    const-string v26, ""

    .line 1001
    .local v26, "packageName":Ljava/lang/String;
    const-string v8, ""

    .line 1002
    .local v8, "hostname":Ljava/lang/String;
    const-string v9, ""

    .line 1003
    .local v9, "port":Ljava/lang/String;
    const-string v11, ""

    .line 1005
    .local v11, "portLocation":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    const/4 v5, 0x2

    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    .line 1006
    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables... type not mached"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/4 v5, 0x0

    .line 1116
    :goto_0
    return v5

    .line 1011
    :cond_0
    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_1

    .line 1012
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 1015
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v19, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v24, "ipCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    .local v20, "hostCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 1020
    .local v25, "isHost":Z
    const/4 v5, 0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_2

    const/4 v5, 0x2

    move/from16 v0, p4

    if-eq v0, v5, :cond_2

    .line 1021
    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables... jumpAction not mached"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v5, 0x0

    goto :goto_0

    .line 1026
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1028
    .local v28, "rule":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 1029
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1033
    :cond_4
    const-string v5, ";"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1035
    .local v27, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    .line 1036
    const/4 v5, 0x0

    goto :goto_0

    .line 1039
    :cond_5
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1040
    .local v17, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v8, v17, v5

    .line 1041
    const/4 v5, 0x1

    aget-object v9, v17, v5

    .line 1042
    const/4 v5, 0x1

    aget-object v11, v27, v5

    .line 1043
    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1044
    const/16 v25, 0x1

    .line 1049
    :goto_1
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 1050
    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1051
    const/4 v5, 0x2

    aget-object v12, v27, v5

    .line 1068
    :cond_6
    :goto_2
    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1069
    const-string v8, ""

    .line 1071
    :cond_7
    const-string v5, "*"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1072
    const-string v9, ""

    .line 1075
    :cond_8
    const-string v5, "-"

    const-string v6, ":"

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1077
    const-string v5, "*"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1078
    const-string v11, "both"

    .line 1081
    :cond_9
    if-eqz v26, :cond_a

    .line 1082
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v16

    .line 1085
    :cond_a
    if-eqz v16, :cond_3

    .line 1086
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_3

    .line 1087
    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1088
    .local v15, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    move/from16 v0, p4

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1089
    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "filter"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "both"

    const-string v10, ""

    aget v14, v16, v21

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1092
    .local v4, "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    .line 1094
    if-eqz v19, :cond_11

    .line 1095
    if-eqz v25, :cond_10

    .line 1096
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1097
    .local v18, "command":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1046
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v18    # "command":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1053
    :cond_c
    const-string v12, ""

    goto/16 :goto_2

    .line 1055
    :cond_d
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 1057
    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1058
    const/4 v5, 0x2

    aget-object v5, v27, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1062
    :goto_5
    const/4 v5, 0x3

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1063
    const/4 v5, 0x3

    aget-object v12, v27, v5

    goto/16 :goto_2

    .line 1060
    :cond_e
    const-string v26, ""

    goto :goto_5

    .line 1065
    :cond_f
    const-string v12, ""

    goto/16 :goto_2

    .line 1100
    .restart local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .restart local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .restart local v21    # "i":I
    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1101
    .restart local v18    # "command":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1086
    .end local v18    # "command":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 1108
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v17    # "args":[Ljava/lang/String;
    .end local v21    # "i":I
    .end local v27    # "parameters":[Ljava/lang/String;
    .end local v28    # "rule":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 1109
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1111
    :cond_13
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 1113
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    .line 1116
    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private declared-synchronized applyDnsPerAppRule(II)V
    .locals 17
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3302
    monitor-enter p0

    :try_start_0
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule - Begin"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_2

    .line 3305
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllPackagesFromDB(II)Ljava/util/List;

    move-result-object v9

    .line 3306
    .local v9, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 3307
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3309
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 3310
    .local v12, "uid":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3311
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3312
    .local v8, "packName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 3313
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v12

    .line 3314
    const-string v13, "FirewallPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyDnsPerAppRule - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " userId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3316
    .local v10, "token":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3317
    .local v3, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_1

    .line 3318
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3319
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3317
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3322
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v13, v0}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v12, v12}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3324
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3325
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule - Rule Applied"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3328
    .end local v3    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "packName":Ljava/lang/String;
    .end local v9    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "token":J
    .end local v12    # "uid":I
    :catch_0
    move-exception v4

    .line 3329
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v13, "FirewallPolicy"

    const-string v14, "applyDnsPerAppRule Exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3332
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0

    return-void

    .line 3302
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private applyMarketIptablesRules(ILjava/lang/String;I)V
    .locals 17
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 2696
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMarketIptablesRules , packageName->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adminUid->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v14

    .line 2698
    .local v14, "appUids":[I
    if-eqz v14, :cond_1

    .line 2699
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v3, v14

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 2700
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2701
    .local v13, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2702
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "filter"

    const-string v4, "samsung_market_policy"

    const-string v5, "out"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, "data"

    const/4 v11, 0x1

    aget v12, v14, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2706
    .local v2, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v15

    .line 2707
    .local v15, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_0

    .line 2708
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2699
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2711
    .end local v2    # "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "i":I
    :cond_1
    return-void
.end method

.method private applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    .line 2673
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2674
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2675
    .local v1, "callingUid":I
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket(I)V

    .line 2676
    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 2677
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 2678
    .local v5, "marketPackage":Ljava/lang/String;
    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(ILjava/lang/String;I)V

    .line 2677
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2681
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "marketPackage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 933
    const-string v2, "FirewallPolicy"

    const-string v6, "applyProxyRules..."

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 935
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 936
    .local v5, "uid":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 937
    .local v3, "containerId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v17

    .line 938
    .local v17, "enabledUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v4, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v8, "duplicateIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    .line 943
    const/4 v7, 0x1

    .line 947
    .local v7, "enabled":Z
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 948
    :cond_0
    const/4 v2, 0x0

    .line 987
    :goto_1
    return v2

    .line 945
    .end local v7    # "enabled":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "enabled":Z
    goto :goto_0

    .line 951
    :cond_2
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 952
    .local v18, "jsonRule":Lorg/json/JSONObject;
    const-string v2, "host"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    const-string v2, "port"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    .end local v18    # "jsonRule":Lorg/json/JSONObject;
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    .line 960
    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 962
    if-eqz v7, :cond_3

    move-object/from16 v9, p0

    move v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move v15, v5

    .line 964
    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_1

    .line 955
    :catch_0
    move-exception v16

    .line 956
    .local v16, "e":Lorg/json/JSONException;
    const-string v2, "FirewallPolicy"

    const-string v6, "JSONException"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 967
    .end local v16    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 970
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 973
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 976
    if-eqz v7, :cond_6

    move-object/from16 v9, p0

    move v10, v3

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move v15, v5

    .line 978
    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    goto :goto_1

    .line 981
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 984
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 987
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 17
    .param p1, "containerId"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "proxyType"    # Ljava/lang/String;
    .param p6, "adminUid"    # I

    .prologue
    .line 1221
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v16, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1224
    .local v15, "appUids":[I
    sget-boolean v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_0

    .line 1225
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 1228
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1229
    :cond_1
    const/4 v4, 0x0

    .line 1253
    :goto_0
    return v4

    .line 1232
    :cond_2
    const-string v8, ""

    .line 1233
    .local v8, "protocolPort":Ljava/lang/String;
    const-string v4, "proxy"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1234
    const-string v8, "80"

    .line 1237
    :cond_3
    const-string v4, "*"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v15

    .line 1239
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1240
    .local v14, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1241
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 1242
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 1243
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v4, "nat"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "out"

    const-string v7, ""

    const-string/jumbo v9, "tcp"

    const-string v10, "remote"

    const-string v11, ""

    const/4 v12, 0x0

    aget v13, v15, v12

    move/from16 v12, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1247
    .local v3, "proxyRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1249
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1250
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1253
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private applyRedirectExceptionRules(IILjava/util/List;I)Z
    .locals 14
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2755
    .local p3, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "FirewallPolicy"

    const-string v2, "applyRedirectExceptionRules..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2757
    .local v3, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2759
    .local v7, "duplicateIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2760
    .local v13, "rule":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2761
    .local v12, "parameters":[Ljava/lang/String;
    array-length v1, v12

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2762
    const/4 v1, 0x0

    .line 2801
    .end local v12    # "parameters":[Ljava/lang/String;
    .end local v13    # "rule":Ljava/lang/String;
    :goto_1
    return v1

    .line 2764
    .restart local v12    # "parameters":[Ljava/lang/String;
    .restart local v13    # "rule":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2765
    .local v8, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2766
    .local v9, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "host"

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2767
    const-string v1, "port"

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2768
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2769
    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2770
    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2773
    .end local v8    # "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "parameters":[Ljava/lang/String;
    .end local v13    # "rule":Ljava/lang/String;
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v10

    .line 2775
    .local v10, "enabledUid":I
    move/from16 v0, p2

    if-ne v10, v0, :cond_2

    .line 2776
    const/4 v6, 0x1

    .line 2781
    .local v6, "enabled":Z
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    .line 2783
    const-string v5, "redirect_exception"

    move-object v1, p0

    move v2, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2785
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 2786
    if-eqz v6, :cond_3

    .line 2787
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v1

    goto :goto_1

    .line 2778
    .end local v6    # "enabled":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "enabled":Z
    goto :goto_2

    .line 2789
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 2792
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_6

    .line 2793
    const-string v1, "redirect_exception"

    move/from16 v0, p2

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2794
    if-eqz v6, :cond_5

    .line 2795
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v1

    goto :goto_1

    .line 2797
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 2801
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private applyRedirectExceptionRulesToIptables(ILjava/util/List;II)Z
    .locals 21
    .param p1, "containerId"    # I
    .param p3, "type"    # I
    .param p4, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 2806
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "FirewallPolicy"

    const-string v4, "applyRedirectExceptionRulesToIptables..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    sget-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v3, :cond_0

    .line 2808
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 2810
    :cond_0
    const-string v8, "both"

    .line 2811
    .local v8, "protocol":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2812
    .local v15, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2813
    .local v19, "rule":Ljava/lang/String;
    const-string v3, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2814
    .local v18, "parameters":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2815
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v18, v3

    .line 2817
    :cond_2
    const/4 v3, 0x1

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2818
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v18, v3

    .line 2819
    const-string v8, ""

    .line 2821
    :cond_3
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2822
    .local v13, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2823
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "nat"

    const-string v4, "samsung_exceptions"

    const-string v5, "out"

    const/4 v6, 0x0

    aget-object v6, v18, v6

    const/4 v7, 0x1

    aget-object v7, v18, v7

    const-string v9, "remote"

    const-string v10, ""

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move/from16 v11, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2827
    .local v2, "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v20

    .line 2828
    .local v20, "tempCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_1

    .line 2829
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2831
    .local v14, "command":Ljava/lang/String;
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2836
    .end local v2    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v14    # "command":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "rule":Ljava/lang/String;
    .end local v20    # "tempCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 2837
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2839
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private applyRerouteRules(IILjava/util/List;I)Z
    .locals 19
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 845
    .local p3, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v5, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v9, "duplicateIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 849
    .local v18, "rule":Ljava/lang/String;
    const-string v3, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 851
    .local v12, "args":[Ljava/lang/String;
    array-length v3, v12

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    array-length v3, v12

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 852
    const/4 v3, 0x0

    .line 925
    .end local v12    # "args":[Ljava/lang/String;
    .end local v18    # "rule":Ljava/lang/String;
    :goto_1
    return v3

    .line 855
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v18    # "rule":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v12, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 856
    .local v17, "originArgs":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v12, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 858
    .local v13, "destArgs":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v10, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v11, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "originHost"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    const-string v3, "originPort"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    const-string v3, "destHost"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v3, "destPort"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const/4 v3, 0x1

    aget-object v3, v17, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    array-length v3, v12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 870
    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    const-string v3, "default"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v16

    .line 882
    .local v16, "jsonRule":Lorg/json/JSONObject;
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
    .end local v16    # "jsonRule":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "packageName"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const-string v3, "networkInterface"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    const-string/jumbo v3, "type"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    const/4 v3, 0x2

    aget-object v3, v12, v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    const/4 v3, 0x3

    aget-object v3, v12, v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    const-string v3, "app"

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v16

    .restart local v16    # "jsonRule":Lorg/json/JSONObject;
    goto :goto_2

    .line 886
    .end local v10    # "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "args":[Ljava/lang/String;
    .end local v13    # "destArgs":[Ljava/lang/String;
    .end local v16    # "jsonRule":Lorg/json/JSONObject;
    .end local v17    # "originArgs":[Ljava/lang/String;
    .end local v18    # "rule":Ljava/lang/String;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v14

    .line 888
    .local v14, "enabledUid":I
    move/from16 v0, p2

    if-ne v14, v0, :cond_4

    .line 889
    const/4 v8, 0x1

    .line 894
    .local v8, "enabled":Z
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 895
    :cond_3
    const-string v7, "reroute"

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 897
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 898
    if-eqz v8, :cond_5

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    .line 891
    .end local v8    # "enabled":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "enabled":Z
    goto :goto_3

    .line 902
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 905
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 908
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    .line 909
    const-string v3, "reroute"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 911
    if-eqz v8, :cond_8

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    move-result v3

    goto/16 :goto_1

    .line 917
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 921
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 925
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private applyRerouteRulesToIptables(ILjava/util/List;II)Z
    .locals 30
    .param p1, "containerId"    # I
    .param p3, "type"    # I
    .param p4, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1123
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 1125
    .local v26, "isHost":Z
    const-string v28, ""

    .line 1126
    .local v28, "packageName":Ljava/lang/String;
    const-string v12, ""

    .line 1127
    .local v12, "networkInterface":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1130
    .local v16, "appUids":[I
    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_0

    .line 1131
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 1134
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v19, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v25, "ipCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v21, "hostCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1139
    .local v29, "rule":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 1140
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 1141
    :cond_2
    const-string v5, ";"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1142
    .local v17, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1143
    .local v27, "originArgs":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v17, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1145
    .local v20, "destArgs":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 1146
    const/4 v5, 0x2

    aget-object v5, v17, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1147
    const/4 v5, 0x2

    aget-object v5, v17, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1149
    :cond_3
    const/4 v5, 0x3

    aget-object v5, v17, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1150
    const/4 v5, 0x3

    aget-object v12, v17, v5

    .line 1154
    :cond_4
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1155
    const/16 v26, 0x1

    .line 1159
    :goto_0
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1160
    const/16 v26, 0x0

    .line 1161
    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v27, v5

    .line 1163
    :cond_5
    const/4 v5, 0x1

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1164
    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v27, v5

    .line 1168
    :goto_1
    const/4 v5, 0x1

    aget-object v5, v20, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1169
    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v20, v5

    .line 1172
    :cond_6
    if-eqz v28, :cond_7

    .line 1173
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v16

    .line 1176
    :cond_7
    if-eqz v16, :cond_1

    .line 1177
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v22

    if-ge v0, v5, :cond_1

    .line 1179
    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1180
    .local v15, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1181
    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 1182
    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 1183
    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "nat"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "out"

    const/4 v8, 0x0

    aget-object v8, v27, v8

    const/4 v9, 0x1

    aget-object v9, v27, v9

    const-string v10, "both"

    const-string v11, "remote"

    aget v14, v16, v22

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1188
    .local v4, "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    .line 1191
    if-eqz v19, :cond_b

    .line 1192
    if-eqz v26, :cond_a

    .line 1193
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1194
    .local v18, "command":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1157
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v18    # "command":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1166
    :cond_9
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v27, v6

    const-string v7, "-"

    const-string v8, ":"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v27, v5

    goto/16 :goto_1

    .line 1197
    .restart local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .restart local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .restart local v22    # "i":I
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1198
    .restart local v18    # "command":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1177
    .end local v18    # "command":Ljava/lang/String;
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 1206
    .end local v4    # "firewallRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v15    # "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v17    # "args":[Ljava/lang/String;
    .end local v20    # "destArgs":[Ljava/lang/String;
    .end local v22    # "i":I
    .end local v27    # "originArgs":[Ljava/lang/String;
    .end local v29    # "rule":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 1207
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1209
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 1211
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    .line 1215
    :cond_e
    const/4 v5, 0x1

    return v5
.end method

.method private checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1843
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1844
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "rules"

    aput-object v0, v3, v9

    .line 1847
    .local v3, "returnColumns":[Ljava/lang/String;
    const-string v0, "rules =? "

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    const-string/jumbo v0, "type =? "

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1852
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1853
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1857
    :goto_0
    return v0

    .line 1856
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1857
    goto :goto_0
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1409
    if-nez p1, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return v0

    .line 1412
    :cond_1
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOnline()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1862
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1864
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1865
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1866
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 1867
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v3

    .line 1869
    .local v3, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1870
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_1
    const/4 v5, 0x2

    if-ge v0, v5, :cond_0

    .line 1871
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->executePendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;I)V

    .line 1870
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1869
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1875
    .end local v0    # "containerId":I
    .end local v3    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "x":I
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_2
    return-void

    .line 1877
    :catch_0
    move-exception v1

    .line 1878
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "FirewallPolicy"

    const-string v6, "checkOnline exception"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_2

    .line 1882
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_2
.end method

.method private cleanChain(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1305
    if-nez p2, :cond_0

    .line 1313
    :goto_0
    return-void

    .line 1308
    :cond_0
    if-nez p3, :cond_1

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1311
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private cleanInDb(IILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1633
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    .line 1638
    const/4 v1, 0x1

    return v1
.end method

.method private clearDnsPerApp(II)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 3285
    const/4 v4, 0x0

    .line 3288
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackagesFromDB(II)Ljava/util/List;

    move-result-object v3

    .line 3289
    .local v3, "packagesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3291
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3293
    .local v2, "packName":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDNSForApp(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    or-int/2addr v4, v5

    .line 3294
    goto :goto_0

    .line 3295
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "packName":Ljava/lang/String;
    .end local v3    # "packagesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 3296
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "FirewallPolicy"

    const-string v6, "Exception clearDnsPerApp"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return v4
.end method

.method private clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .prologue
    .line 1483
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1484
    :try_start_0
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1485
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1487
    :try_start_1
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1488
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1489
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1490
    :try_start_2
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1491
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1492
    return-void

    .line 1485
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1488
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1491
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private createChainForMarket(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 2684
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    if-nez v1, :cond_0

    .line 2685
    const-string v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2687
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 2689
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    .line 2691
    .end local v0    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3081
    const/4 v0, 0x0

    .line 3082
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3084
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3090
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    return-object v0

    .line 3086
    :catch_0
    move-exception v1

    .line 3087
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v4, "FirewallPolicy"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3088
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3090
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private createIptablesChains(I)V
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1325
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    const-string v1, "/system/bin/iptables -t nat -A OUTPUT -j samsung_exceptions-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1343
    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    .line 1344
    return-void
.end method

.method private createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "argNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "argValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2035
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    move-object v2, v5

    .line 2055
    :cond_0
    :goto_0
    return-object v2

    .line 2039
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2042
    .local v2, "jsonRule":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2043
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2044
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2045
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2046
    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2042
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2048
    :cond_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2051
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 2053
    goto :goto_0
.end method

.method private createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 1347
    if-nez p3, :cond_0

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    :goto_0
    return-object v0

    .line 1351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1277
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1278
    .local v9, "enabledUid":I
    const-string v0, "FirewallPolicy"

    const-string v2, "disableProxyOnIptables"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1280
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1281
    .local v6, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1282
    .local v1, "containerId":I
    if-ne v9, v6, :cond_0

    .line 1284
    const-string v0, "proxy"

    invoke-direct {p0, v1, v9, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1286
    .local v10, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1287
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1288
    .local v11, "ruleUid":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 1289
    .local v12, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1290
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1291
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1292
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1294
    .local v8, "args":[Ljava/lang/String;
    aget-object v2, v8, v3

    aget-object v3, v8, v13

    const/4 v4, 0x2

    const-string v5, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 1301
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v10    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ruleUid":I
    .end local v12    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v13
.end method

.method private disableRulesOnIptables(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabledUid"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1257
    const-string v2, "FirewallPolicy"

    const-string v3, "disableRulesOnIptables"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1259
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1260
    .local v1, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1261
    .local v0, "containerId":I
    if-ne p2, v1, :cond_0

    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1267
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v2, "samsung_exceptions-output"

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v2, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1271
    const-string v2, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 1273
    :cond_0
    return v5
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1942
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1944
    return-object p1
.end method

.method private enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized executePendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;I)V
    .locals 9
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "containerId"    # I

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1448
    .local v7, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1449
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1452
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1453
    .local v2, "command":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1446
    .end local v2    # "command":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1449
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1458
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1459
    :try_start_5
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1460
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1461
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1464
    :try_start_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1465
    .restart local v2    # "command":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1461
    .end local v2    # "command":Ljava/lang/String;
    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    :goto_2
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 1470
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1471
    :try_start_a
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1472
    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_b
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1473
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1476
    :try_start_c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1477
    .restart local v2    # "command":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 1473
    .end local v2    # "command":Ljava/lang/String;
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object v7, v8

    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1480
    :cond_2
    monitor-exit p0

    return-void

    .line 1473
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 1461
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object v7, v8

    .end local v8    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private getAllAdminsNetworkForMarketEnabled(II)I
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2727
    const-string v0, "FirewallPolicy"

    const-string v1, "getAllAdminsNetworkForMarketEnabled ..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2729
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, -0x1

    .line 2730
    .local v11, "uidList":I
    new-array v3, v2, [Ljava/lang/String;

    .line 2731
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 2733
    const-string v0, "MarketNetworkType=?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 2741
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 2742
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2744
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 2745
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2746
    .local v10, "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2747
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2750
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_0
    return v11
.end method

.method private getAllPackagesFromDB(II)Ljava/util/List;
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3379
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 3380
    .local v4, "returnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    .line 3382
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DNSPerApp"

    invoke-virtual {v5, p1, v6, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 3385
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_1

    .line 3386
    const/4 v3, 0x0

    .line 3398
    :cond_0
    return-object v3

    .line 3389
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3390
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3392
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3393
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cv":Landroid/content/ContentValues;
    check-cast v0, Landroid/content/ContentValues;

    .line 3395
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAllRules(II)Ljava/util/List;
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1803
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .local v3, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1806
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "allow"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1807
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1808
    .local v2, "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1810
    .end local v2    # "rule":Ljava/lang/String;
    :cond_0
    const-string v4, "deny"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1811
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1812
    .restart local v2    # "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";deny"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1814
    .end local v2    # "rule":Ljava/lang/String;
    :cond_1
    const-string v4, "reroute"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1815
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1816
    .restart local v2    # "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";reroute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1818
    .end local v2    # "rule":Ljava/lang/String;
    :cond_2
    const-string v4, "redirect_exception"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1819
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1820
    .restart local v2    # "rule":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";redirect_exceptions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1823
    .end local v2    # "rule":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getAllUsers()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1887
    const/4 v3, 0x0

    .line 1888
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1889
    .local v1, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 1890
    .local v6, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    .local v5, "userListList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1892
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1893
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1895
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1896
    return-object v5
.end method

.method private getAppUid(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2059
    const/4 v1, -0x1

    .line 2060
    .local v1, "appUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2062
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2063
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    .line 2068
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 2064
    :catch_0
    move-exception v2

    .line 2065
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private getAppUidForUser(Ljava/lang/String;I)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2072
    const/4 v1, -0x1

    .line 2073
    .local v1, "appUid":I
    const/4 v2, 0x0

    .line 2075
    .local v2, "ctx":Landroid/content/Context;
    const-string v5, "android"

    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 2076
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2078
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2079
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    .line 2080
    :catch_0
    move-exception v3

    .line 2081
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name not found error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAppUids(I)[I
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v9, -0x1

    .line 2087
    const/4 v1, 0x0

    .line 2089
    .local v1, "appUids":[I
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackages(I)[Ljava/lang/String;

    move-result-object v6

    .line 2090
    .local v6, "packageNames":[Ljava/lang/String;
    if-eqz v6, :cond_4

    array-length v8, v6

    if-lez v8, :cond_4

    .line 2091
    array-length v8, v6

    new-array v7, v8, [I

    .line 2092
    .local v7, "tempAppUids":[I
    const/4 v3, 0x0

    .line 2093
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 2094
    aget-object v8, v6, v2

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    .line 2095
    .local v0, "appUid":I
    if-eq v0, v9, :cond_1

    .line 2097
    add-int/lit8 v5, v3, -0x1

    .local v5, "k":I
    :goto_1
    if-ltz v5, :cond_0

    .line 2098
    aget v8, v7, v5

    if-ne v8, v0, :cond_2

    .line 2099
    const/4 v0, -0x1

    .line 2103
    :cond_0
    if-eq v0, v9, :cond_1

    .line 2104
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput v0, v7, v3

    move v3, v4

    .line 2093
    .end local v4    # "j":I
    .end local v5    # "k":I
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2097
    .restart local v5    # "k":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2108
    .end local v0    # "appUid":I
    .end local v5    # "k":I
    :cond_3
    if-lez v3, :cond_4

    .line 2109
    new-array v1, v3, [I

    .line 2110
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 2111
    aget v8, v7, v2

    aput v8, v1, v2

    .line 2110
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2115
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v7    # "tempAppUids":[I
    :cond_4
    return-object v1
.end method

.method private getAppUids(ILjava/lang/String;I)[I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2119
    const/4 v1, 0x0

    .line 2120
    .local v1, "appUids":[I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2121
    .local v2, "token":J
    if-lez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2122
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    .line 2137
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2138
    return-object v1

    .line 2124
    :cond_1
    const-string v4, "*"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2125
    :cond_2
    new-array v1, v6, [I

    .line 2126
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_0

    .line 2129
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    .line 2130
    .local v0, "appUid":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 2132
    :cond_4
    new-array v1, v6, [I

    .line 2133
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_0
.end method

.method private getAppUidsForAllUsers(ILjava/lang/String;)[I
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2142
    const/4 v1, 0x0

    .line 2143
    .local v1, "appUids":[I
    if-lez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 2144
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    .line 2160
    :cond_0
    return-object v1

    .line 2146
    :cond_1
    const/4 v0, 0x0

    .line 2147
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2148
    .local v5, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2149
    .local v8, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    .local v2, "appUidsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2151
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-direct {p0, p2, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v0

    .line 2152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2154
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2155
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [I

    .line 2156
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 2157
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v1, v3

    .line 2156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getChain(I)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 2168
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2170
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 2172
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 8
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    .line 1900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    .local v4, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1903
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1908
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1909
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "FirewallPolicy"

    const-string v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1912
    if-eqz v1, :cond_0

    .line 1913
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1919
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1912
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 1913
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 1918
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1911
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 1912
    :goto_4
    if-eqz v1, :cond_3

    .line 1913
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1911
    :cond_3
    :goto_5
    throw v5

    .line 1915
    :catch_1
    move-exception v0

    .line 1916
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "FirewallPolicy"

    const-string v7, "IOException on getCommandResult"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1915
    :catch_2
    move-exception v0

    .line 1916
    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1915
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 1916
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "FirewallPolicy"

    const-string v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1911
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1908
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .locals 2

    .prologue
    .line 3607
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3608
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3609
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 3610
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    .line 3613
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3029
    if-gtz p0, :cond_0

    .line 3033
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3403
    const-string v0, "FirewallPolicy"

    const-string v1, "getDnsFromPackage - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3406
    .local v3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3407
    const-string v0, "packageName=?"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 3410
    .local v2, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "packageName"

    aput-object v1, v2, v0

    .line 3411
    const/4 v0, 0x1

    const-string v1, "dns1"

    aput-object v1, v2, v0

    .line 3412
    const/4 v0, 0x2

    const-string v1, "dns2"

    aput-object v1, v2, v0

    .line 3414
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DNSPerApp"

    const/4 v4, 0x0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    .line 3417
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3419
    .local v9, "resultSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 3420
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3422
    :try_start_0
    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3423
    const-string v0, "packageName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3424
    const/4 v8, 0x0

    .line 3425
    .local v8, "index":I
    const-string v0, "dns1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3426
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3428
    const-string v0, "dns2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3429
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3437
    .end local v8    # "index":I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3438
    return-object v9

    .line 3433
    :catch_0
    move-exception v7

    .line 3434
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "FirewallPolicy"

    const-string v1, "package dns empty"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v5, 0x2

    .line 3096
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3098
    new-array v0, v5, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .line 3099
    .local v0, "fpCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 3100
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;-><init>(I)V

    aput-object v3, v0, v1

    .line 3099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3102
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    .end local v0    # "fpCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .line 3106
    .local v2, "tCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    aget-object v3, v2, p2

    return-object v3
.end method

.method private getLastUidForProxy(I)I
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    .line 1754
    const-string v0, "FirewallPolicy"

    const-string v1, "getLastUidForProxy"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1756
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1757
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1759
    const-string/jumbo v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1766
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    const-string v0, "adminUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1768
    .local v7, "index":I
    new-instance v8, Ljava/lang/Long;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1769
    .local v8, "lUid":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1773
    .end local v7    # "index":I
    .end local v8    # "lUid":Ljava/lang/Long;
    .local v9, "uid":Ljava/lang/Integer;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1774
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1771
    .end local v9    # "uid":Ljava/lang/Integer;
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .restart local v9    # "uid":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getLastUidForProxy(II)I
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1779
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1780
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1781
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1783
    const-string/jumbo v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1790
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1792
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1797
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .local v10, "uid":Ljava/lang/Integer;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1798
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1795
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .restart local v10    # "uid":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getLastUidForRules(II)I
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1728
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1730
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1731
    .local v3, "returnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    .line 1733
    const-string/jumbo v0, "type !=? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    const-string v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1742
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    const-string v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1744
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1749
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .local v10, "uid":Ljava/lang/Integer;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1750
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1747
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .restart local v10    # "uid":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getNetworkAppsList(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2987
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2989
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2990
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2991
    .local v5, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v1

    .line 2992
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2994
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2995
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v7, "android.permission.INTERNET"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 2996
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2999
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v4
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 3596
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3597
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3598
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 3599
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    .line 3602
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3037
    if-gtz p0, :cond_0

    .line 3042
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getPackagesFromDB(II)Ljava/util/List;
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3352
    const-string v5, "FirewallPolicy"

    const-string v6, "getPackagesFromDB - Begin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 3355
    .local v4, "returnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    .line 3357
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DNSPerApp"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, p1, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 3360
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_1

    .line 3361
    const/4 v3, 0x0

    .line 3373
    :cond_0
    return-object v3

    .line 3364
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3365
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3367
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3368
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3369
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cv":Landroid/content/ContentValues;
    check-cast v0, Landroid/content/ContentValues;

    .line 3370
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRulesFromDb.. containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1558
    .local v6, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1559
    .local v8, "userId":I
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 1561
    .local v5, "returnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "rules"

    aput-object v3, v5, v2

    .line 1562
    const/4 v2, 0x1

    const-string v3, "adminUid"

    aput-object v3, v5, v2

    .line 1563
    const-string/jumbo v2, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string v2, "adminUid =? "

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallTable"

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1566
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1568
    .local v9, "adminUid":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .local v14, "resultset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_8

    .line 1570
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1571
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1572
    const-string v2, "rules"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1574
    .local v13, "jsonString":Ljava/lang/String;
    const-string v2, "adminUid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1577
    const-string v15, ""

    .line 1579
    .local v15, "ruleStr":Ljava/lang/String;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1580
    .local v12, "json":Lorg/json/JSONObject;
    const-string v2, "reroute"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1581
    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1582
    .local v16, "ruleType":Ljava/lang/String;
    if-eqz v16, :cond_1

    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1622
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v16    # "ruleType":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1586
    .restart local v12    # "json":Lorg/json/JSONObject;
    .restart local v16    # "ruleType":Ljava/lang/String;
    :cond_1
    if-eqz v16, :cond_0

    :try_start_1
    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destHost"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1594
    .end local v16    # "ruleType":Ljava/lang/String;
    :cond_2
    const-string v2, "allow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "deny"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1595
    :cond_3
    const-string/jumbo v2, "type"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1596
    .restart local v16    # "ruleType":Ljava/lang/String;
    if-eqz v16, :cond_4

    const-string v2, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1599
    :cond_4
    if-eqz v16, :cond_0

    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1600
    const-string v2, "deny"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1609
    :cond_5
    const-string v2, "allow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "portLocation"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkInterface"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1616
    .end local v16    # "ruleType":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto/16 :goto_1

    .line 1618
    .end local v12    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 1619
    .local v11, "e":Lorg/json/JSONException;
    const-string v2, "FirewallPolicy"

    const-string v3, "JSONException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1626
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v15    # "ruleStr":Ljava/lang/String;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1628
    :cond_8
    return-object v14
.end method

.method private getUidFromRule(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1839
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2197
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2198
    .local v7, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2200
    .local v1, "containerId":I
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 2201
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    .line 2202
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2203
    .local v8, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlBlackList - uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    if-nez p2, :cond_4

    .line 2205
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v11, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2208
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 2209
    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - Cursor is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const/4 v8, 0x0

    .line 2249
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 2213
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2216
    :cond_2
    :try_start_0
    const-string/jumbo v10, "url"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2218
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    .line 2224
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2219
    :catch_0
    move-exception v5

    .line 2220
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const/4 v8, 0x0

    goto :goto_0

    .line 2226
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2227
    .local v9, "userId":I
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting URLList called by server for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v1, v11, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 2237
    if-nez v4, :cond_5

    .line 2238
    const-string v10, "FirewallPolicy"

    const-string v11, "getUrlBlackList - cv is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const/4 v8, 0x0

    goto :goto_0

    .line 2232
    :catch_1
    move-exception v5

    .line 2233
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "FirewallPolicy"

    const-string v11, "Policy Disable"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const/4 v8, 0x0

    goto :goto_0

    .line 2242
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v3, 0x0

    .line 2243
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2244
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2245
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 2246
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 2253
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 2254
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object p2, v0, v10

    .line 2255
    const/4 v6, 0x0

    .line 2257
    .local v6, "ret":Z
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2258
    .local v8, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2260
    .local v1, "containerId":I
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " containerId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " column:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    if-lez v8, :cond_3

    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_3

    .line 2262
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterSettingsTable"

    invoke-virtual {v10, v11, v8, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2264
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 2265
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2266
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2267
    const/4 v6, 0x1

    .line 2270
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2294
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - ret: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    return v6

    .line 2272
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v10, "FirewallPolicy"

    const-string v11, "Cursor is NULL"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2276
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2277
    .local v9, "userId":I
    const-string v10, "FirewallPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUrlFilterState - userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v12, "WebFilterSettingsTable"

    invoke-virtual {v10, v11, v12, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 2280
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    .line 2281
    const/4 v3, 0x0

    .line 2282
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2284
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2285
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 2286
    .restart local v3    # "cv":Landroid/content/ContentValues;
    invoke-virtual {v3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2287
    .local v7, "string":Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string/jumbo v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2288
    const/4 v6, 0x1

    .line 2289
    goto :goto_0
.end method

.method private handleConnectivityAction()V
    .locals 0

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkOnline()V

    .line 1927
    return-void
.end method

.method private refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z
    .locals 4
    .param p1, "cache"    # Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .param p2, "userId"    # I
    .param p3, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3110
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return v1

    .line 3113
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3114
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    .line 3115
    .local v0, "tCache":[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    aput-object p1, v0, p3

    .line 3117
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private refreshProxyRules()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 626
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    .line 628
    .local v2, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-string v6, "nat"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 630
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 631
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    .line 633
    .local v1, "enabledUid":I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    .line 635
    invoke-virtual {p0, v0, v7, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxyWithUid(IZI)Z

    .line 630
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 629
    .end local v1    # "enabledUid":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .end local v3    # "x":I
    :cond_2
    return v7
.end method

.method private refreshRules()Z
    .locals 14

    .prologue
    .line 562
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x0

    const-string v2, "samsung_exceptions-output"

    const-string v3, "nat"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "FirewallPolicy"

    const-string v2, "--- Refresh Rules ----"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v12

    .line 571
    .local v12, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "containerId":I
    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6

    .line 572
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_5

    .line 573
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v8

    .line 574
    .local v8, "enabledUid":I
    const/4 v0, -0x1

    if-eq v0, v8, :cond_4

    .line 576
    const-string v0, "allow"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 577
    .local v6, "allowRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 578
    .local v11, "ruleLUid":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 579
    .local v5, "ruleUid":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 581
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 583
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;III)Z

    .line 586
    const-string v0, "deny"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 587
    .local v7, "denyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 588
    const/4 v5, 0x0

    .line 589
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 590
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 591
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 593
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;III)Z

    .line 596
    const-string v0, "reroute"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 598
    .local v10, "rerouteRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 599
    const/4 v5, 0x0

    .line 600
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 601
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 602
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 604
    :cond_2
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(ILjava/util/List;II)Z

    .line 606
    const-string v0, "redirect_exception"

    invoke-direct {p0, v1, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 608
    .local v9, "redirectExceptionRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 609
    const/4 v5, 0x0

    .line 610
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 611
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 612
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 614
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(ILjava/util/List;II)Z

    .line 618
    .end local v5    # "ruleUid":I
    .end local v6    # "allowRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "denyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "redirectExceptionRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "rerouteRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ruleLUid":Ljava/lang/Long;
    :cond_4
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyDnsPerAppRule(II)V

    .line 572
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 571
    .end local v8    # "enabledUid":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 622
    .end local v13    # "x":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private removeDNSForApp(ILjava/lang/String;I)Z
    .locals 12
    .param p1, "mContainerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    const/4 v9, 0x0

    .line 3240
    const-string v10, "FirewallPolicy"

    const-string v11, "removeDNSForApp - Begin"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    const/4 v4, 0x0

    .line 3243
    .local v4, "ret":Z
    const/4 v1, 0x0

    .line 3244
    .local v1, "containerziedUid":I
    const/4 v0, 0x0

    .line 3246
    .local v0, "appUids":[I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v0

    .line 3247
    if-nez v0, :cond_0

    .line 3274
    :goto_0
    return v9

    .line 3248
    :cond_0
    aget v1, v0, v9

    .line 3250
    if-gez v1, :cond_1

    .line 3251
    const-string v10, "FirewallPolicy"

    const-string v11, "Package name not found in the container"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3255
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 3257
    move v8, v1

    .line 3258
    .local v8, "uid":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 3259
    :try_start_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 3260
    .local v3, "ifaceName":Ljava/lang/String;
    const-string v5, "packageName"

    .line 3262
    .local v5, "returnColumns":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DNSPerApp"

    invoke-virtual {v9, v10, p3, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3264
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v8, v8}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3265
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    const/4 v4, 0x1

    .end local v3    # "ifaceName":Ljava/lang/String;
    .end local v5    # "returnColumns":Ljava/lang/String;
    .end local v6    # "token":J
    .end local v8    # "uid":I
    :cond_2
    :goto_1
    move v9, v4

    .line 3274
    goto :goto_0

    .line 3269
    .restart local v8    # "uid":I
    :catch_0
    move-exception v2

    .line 3270
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "FirewallPolicy"

    const-string v10, "removeDNSForApp exception"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1526
    .local p1, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "duplicates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1527
    .local v0, "delta":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1528
    .local v2, "index":I
    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1529
    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1533
    .end local v2    # "index":I
    :cond_1
    return-void
.end method

.method private removeRuleUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1835
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeRuleUid(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1827
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1829
    .local v2, "rule":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1831
    .end local v2    # "rule":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v4, 0x1

    .line 1537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1538
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1539
    .local v2, "ret":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1540
    .local v3, "rule":Lorg/json/JSONObject;
    const-string v5, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string v5, "rules"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, p1, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v2

    .line 1546
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1548
    .end local v3    # "rule":Lorg/json/JSONObject;
    :cond_0
    if-ne v2, v4, :cond_1

    .line 1551
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private rollbackEnabled(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 731
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    .line 732
    .local v1, "oldUid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 733
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 734
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 736
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    return-void
.end method

.method private rollbackProxyEnabled(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 739
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    .line 740
    .local v1, "oldUid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 741
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 742
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 744
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    return-void
.end method

.method private runIptablesCommands(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1357
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;
    .locals 4
    .param p1, "containerId"    # I
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1364
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1365
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1368
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 1372
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I

    .prologue
    .line 1377
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    .locals 13
    .param p1, "containerId"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I
    .param p5, "pending"    # Z

    .prologue
    .line 1383
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    .local v5, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, " "

    invoke-virtual {p2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1385
    .local v4, "commandArray":[Ljava/lang/String;
    const-string v9, ""

    .line 1386
    .local v9, "result":Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 1387
    .local v3, "commandArg":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1389
    .end local v3    # "commandArg":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    if-eqz v12, :cond_3

    .line 1390
    :cond_1
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1391
    .local v8, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1392
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v12, "command"

    invoke-virtual {v2, v12, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v12, "type"

    move/from16 v0, p4

    invoke-virtual {v2, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1394
    const-string v12, "containerid"

    invoke-virtual {v2, v12, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1395
    invoke-virtual {v8, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1396
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v12, v12, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v12, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_2
    return-object v9

    .line 1398
    :cond_3
    if-nez p5, :cond_2

    .line 1399
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v10

    .line 1400
    .local v10, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1401
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v12

    move/from16 v0, p4

    invoke-direct {p0, v12, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    .line 1400
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2012
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    .local v3, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2014
    .local v2, "commandArray":[Ljava/lang/String;
    const-string v8, ""

    .line 2016
    .local v8, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 2017
    .local v1, "commandArg":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2020
    .end local v1    # "commandArg":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 2022
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 2023
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v9, v8

    .line 2031
    .end local v7    # "process":Ljava/lang/Process;
    :goto_1
    return-object v9

    .line 2024
    :catch_0
    move-exception v4

    .line 2025
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2027
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2028
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2176
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2177
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2179
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    .line 2180
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2181
    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    const-string/jumbo v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2187
    const/4 v2, 0x0

    .line 2191
    :goto_1
    return v2

    .line 2189
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 2191
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setBasicRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 262
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 263
    .local v0, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 264
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    .line 266
    .local v1, "enabledUid":I
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " enabledUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    if-ne v1, v2, :cond_0

    .line 271
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 276
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setBasicRulesEnableOnDb(IZI)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "ret":Z
    const-string v1, "allow"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1645
    const-string v1, "deny"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1646
    const-string v1, "reroute"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1647
    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1648
    return v0
.end method

.method private setEnableOnDb(IZLjava/lang/String;I)Z
    .locals 22
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1659
    const-string v3, "FirewallPolicy"

    const-string v4, "setEnableOnDb..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1661
    .local v11, "cv":Landroid/content/ContentValues;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1662
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adminUid =? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    const-string/jumbo v3, "type =? "

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    if-eqz p2, :cond_1

    .line 1670
    const-string v3, "enabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    .line 1672
    .local v19, "timestamp":J
    const-string/jumbo v3, "timestamp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v21

    .line 1674
    .local v21, "updated":I
    if-lez v21, :cond_0

    .line 1676
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1677
    .local v13, "helpCv":Landroid/content/ContentValues;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1678
    .local v14, "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "enabled"

    const-string v4, "false"

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adminUid IN (SELECT adminUid  from admin where containerId=? AND userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    const-string v3, "adminUid !=? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    const-string v3, "enabled =? "

    const-string/jumbo v4, "true"

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    const-string/jumbo v3, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    invoke-virtual {v3, v4, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1724
    .end local v13    # "helpCv":Landroid/content/ContentValues;
    .end local v14    # "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "timestamp":J
    .end local v21    # "updated":I
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1691
    .restart local v19    # "timestamp":J
    .restart local v21    # "updated":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1694
    .end local v19    # "timestamp":J
    .end local v21    # "updated":I
    :cond_1
    const-string v3, "enabled"

    const-string v4, "false"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v3, "timestamp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v3

    if-lez v3, :cond_3

    .line 1699
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adminUid"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "timestamp"

    aput-object v4, v6, v3

    .line 1702
    .local v6, "returnColumns":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1703
    .local v7, "myMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adminUid !=? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    const-string/jumbo v8, "timestamp"

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1709
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1710
    const-string v3, "adminUid"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1711
    .local v15, "index":I
    new-instance v17, Ljava/lang/Long;

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1712
    .local v17, "myLUid":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 1713
    .local v18, "myUid":Ljava/lang/Integer;
    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    .end local v15    # "index":I
    .end local v17    # "myLUid":Ljava/lang/Long;
    .end local v18    # "myUid":Ljava/lang/Integer;
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1715
    :catch_0
    move-exception v12

    .line 1716
    .local v12, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    const-string v3, "FirewallPolicy"

    const-string v4, "NumberFormatException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1718
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1721
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v7    # "myMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private setProxyRulesEnableOnDb(IZI)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1652
    const/4 v0, 0x1

    .line 1653
    .local v0, "ret":Z
    const-string v1, "proxy"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1654
    return v0
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .locals 20
    .param p1, "type"    # I
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 2913
    const-string v13, "([A-Za-z0-9][a-zA-Z0-9\\-\\.\\_\\~\\:\\/\\?\\#\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\[\\]]+)|(^\\*$)"

    .line 2914
    .local v13, "regexDomain":Ljava/lang/String;
    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 2915
    .local v14, "regexIp":Ljava/lang/String;
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 2916
    .local v15, "regexPort":Ljava/lang/String;
    const-string v16, "^(remote|local|\\*)$"

    .line 2918
    .local v16, "regexPortLocation":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2930
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    .line 2933
    .local v10, "parcialResult":Z
    const/4 v6, 0x0

    .local v6, "hosts":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 2934
    .local v12, "ports":[Ljava/lang/String;
    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 2936
    .local v8, "index":I
    if-lez v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 2937
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2938
    .local v2, "allHosts":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2939
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2940
    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2941
    const/4 v10, 0x0

    .line 2982
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v6    # "hosts":[Ljava/lang/String;
    .end local v8    # "index":I
    .end local v10    # "parcialResult":Z
    .end local v12    # "ports":[Ljava/lang/String;
    :goto_1
    return v10

    .line 2920
    :pswitch_1
    move-object v13, v14

    .line 2921
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 2922
    goto :goto_0

    .line 2924
    :pswitch_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|\\*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2925
    goto :goto_0

    .line 2927
    :pswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    .line 2944
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v6    # "hosts":[Ljava/lang/String;
    .restart local v8    # "index":I
    .restart local v10    # "parcialResult":Z
    .restart local v12    # "ports":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2945
    .local v3, "allPorts":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2946
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2947
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2948
    const/4 v10, 0x0

    goto :goto_1

    .line 2952
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v3    # "allPorts":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 2955
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v3    # "allPorts":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_6

    .line 2956
    move-object v4, v6

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v9, :cond_7

    aget-object v5, v4, v7

    .line 2957
    .local v5, "host":Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2958
    const/4 v10, 0x0

    .line 2962
    :goto_3
    if-nez v10, :cond_3

    .line 2963
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 2965
    :cond_3
    if-nez v10, :cond_4

    .line 2966
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 2956
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2960
    :cond_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_3

    .line 2970
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_6
    const/4 v10, 0x0

    .line 2972
    :cond_7
    if-eqz v12, :cond_9

    .line 2973
    move-object v4, v12

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v9, :cond_a

    aget-object v11, v4, v7

    .line 2974
    .local v11, "port":Ljava/lang/String;
    if-ltz v8, :cond_8

    if-eqz v10, :cond_8

    .line 2975
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 2973
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2979
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "port":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    .line 2981
    :cond_a
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2918
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private validateIp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 3443
    if-eqz p1, :cond_0

    .line 3444
    sget-object v1, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3445
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 3447
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "interfaceType"    # Ljava/lang/String;

    .prologue
    .line 3018
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 3019
    .local v2, "interType":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3020
    const/4 v4, 0x1

    .line 3023
    .end local v2    # "interType":Ljava/lang/String;
    :goto_1
    return v4

    .line 3018
    .restart local v2    # "interType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3023
    .end local v2    # "interType":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private validatePackageName(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3003
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkAppsList(I)Ljava/util/List;

    move-result-object v2

    .line 3006
    .local v2, "netAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3007
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3008
    .local v1, "netApp":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3009
    const/4 v3, 0x1

    .line 3012
    .end local v1    # "netApp":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private validateParameters(ILjava/util/List;I)Z
    .locals 12
    .param p1, "type"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2843
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v6

    .line 2909
    :cond_1
    :goto_0
    return v2

    .line 2846
    :cond_2
    const/4 v2, 0x1

    .line 2848
    .local v2, "finalResult":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2849
    .local v5, "rule":Ljava/lang/String;
    if-nez v5, :cond_3

    move v2, v6

    .line 2850
    goto :goto_0

    .line 2852
    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v2, v6

    .line 2906
    goto :goto_0

    .line 2854
    :pswitch_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2855
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2856
    .local v4, "rerouteArgs":[Ljava/lang/String;
    array-length v7, v4

    if-ne v7, v9, :cond_4

    .line 2857
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2858
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    .line 2860
    :cond_4
    array-length v7, v4

    if-ne v7, v10, :cond_5

    .line 2861
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2862
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2864
    aget-object v7, v4, v9

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2865
    aget-object v7, v4, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    :cond_5
    move v2, v6

    .line 2867
    goto :goto_0

    .end local v4    # "rerouteArgs":[Ljava/lang/String;
    :cond_6
    move v2, v6

    .line 2870
    goto :goto_0

    .line 2874
    :pswitch_2
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2875
    .local v0, "allowArgs":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_7

    .line 2876
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2877
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    .line 2878
    :cond_7
    array-length v7, v0

    if-ne v7, v11, :cond_8

    .line 2879
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2880
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2881
    aget-object v7, v0, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_8
    move v2, v6

    .line 2883
    goto/16 :goto_0

    .line 2888
    .end local v0    # "allowArgs":[Ljava/lang/String;
    :pswitch_3
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2889
    .local v1, "denyArgs":[Ljava/lang/String;
    array-length v7, v1

    if-ne v7, v9, :cond_9

    .line 2890
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2891
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    .line 2892
    :cond_9
    array-length v7, v1

    if-ne v7, v10, :cond_a

    .line 2893
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2894
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2895
    aget-object v7, v1, v9

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2896
    aget-object v7, v1, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_a
    move v2, v6

    .line 2898
    goto/16 :goto_0

    .line 2903
    .end local v1    # "denyArgs":[Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2904
    goto/16 :goto_1

    .line 2852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRules ruleAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 199
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 201
    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 202
    .local v1, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 203
    .local v2, "uid":I
    const-string v0, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRules - cxtInfo.mContainerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cxtInfo.mCallerUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v8, 0x0

    .line 207
    .local v8, "containerziedUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    const-string v0, "FirewallPolicy"

    const-string/jumbo v3, "validateParameters failed"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_2
    const/4 v6, 0x0

    .line 213
    .local v6, "appUids":[I
    const-string v10, ""

    .line 214
    .local v10, "packageName":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 215
    .local v11, "rule":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "args":[Ljava/lang/String;
    array-length v0, v7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 217
    const/4 v0, 0x2

    aget-object v0, v7, v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 219
    if-nez v10, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_4
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v10, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v6

    .line 221
    if-nez v6, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_5
    const/4 v0, 0x0

    aget v8, v6, v0

    goto :goto_1

    .line 226
    .end local v7    # "args":[Ljava/lang/String;
    .end local v11    # "rule":Ljava/lang/String;
    :cond_6
    if-gez v8, :cond_7

    .line 227
    const-string v0, "FirewallPolicy"

    const-string v3, "package name not found in the container"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 231
    :cond_7
    packed-switch p3, :pswitch_data_0

    .line 240
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 234
    :pswitch_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto/16 :goto_0

    .line 236
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto/16 :goto_0

    .line 238
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto/16 :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized applyRules()Z
    .locals 4

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v1

    .line 553
    .local v1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 554
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 555
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 553
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v0    # "containerId":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    .line 551
    .end local v1    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "x":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public cleanAllRules(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 454
    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x1

    .line 457
    .local v0, "ret":Z
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 458
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 459
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 460
    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 462
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    .line 463
    return v0
.end method

.method public cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # I

    .prologue
    .line 333
    const-string v10, "FirewallPolicy"

    const-string v11, "cleanBasicRules..."

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 335
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 336
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 337
    .local v9, "userId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 338
    .local v3, "containerId":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 342
    :cond_0
    const-string v7, ""

    .line 343
    .local v7, "type":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 346
    .local v6, "table":Ljava/lang/String;
    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v4

    .line 348
    .local v4, "enabledUid":I
    invoke-direct {p0, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 350
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    packed-switch p2, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    invoke-direct {p0, v3, v8, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    .line 392
    if-ne v4, v8, :cond_5

    .line 393
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    .local v1, "chain":Ljava/lang/String;
    invoke-direct {p0, v3, v1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v1    # "chain":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_1
    if-ne v4, v8, :cond_1

    .line 353
    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v11

    .line 354
    :try_start_0
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 355
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    const-string v7, "allow"

    .line 358
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-input"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-output"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 362
    :pswitch_2
    if-ne v4, v8, :cond_2

    .line 363
    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v11

    .line 364
    :try_start_2
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 365
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    :cond_2
    const-string v7, "deny"

    .line 368
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-input"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v11, v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-output"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v10, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 371
    const-string v10, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 365
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 374
    :pswitch_3
    if-ne v4, v8, :cond_3

    .line 375
    iget-object v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v11

    .line 376
    :try_start_4
    iget-object v10, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 377
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 379
    :cond_3
    const-string v7, "reroute"

    .line 380
    sget-object v10, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v10, v10, p2

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v6, "nat"

    .line 382
    goto/16 :goto_0

    .line 377
    :catchall_2
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v10

    .line 384
    :pswitch_4
    const-string v7, "redirect_exception"

    .line 385
    const-string v10, "samsung_exceptions-output"

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v6, "nat"

    goto/16 :goto_0

    .line 396
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshRules()Z

    .line 398
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v10, 0x1

    return v10

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 494
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 495
    .local v4, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 496
    .local v1, "containerId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 500
    :cond_0
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v2

    .line 502
    .local v2, "enabledUid":I
    const-string v3, ""

    .line 503
    .local v3, "typeStr":Ljava/lang/String;
    const-string v0, ""

    .line 504
    .local v0, "chain":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 510
    const/4 v5, 0x0

    .line 517
    :goto_0
    return v5

    .line 506
    :pswitch_0
    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 507
    const-string v3, "proxy"

    .line 513
    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    .line 514
    if-ne v2, v4, :cond_1

    .line 515
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    .line 517
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public cleanRules(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ruleAction"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 320
    packed-switch p2, :pswitch_data_0

    .line 329
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 325
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearDnsPerApp(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3280
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    move-result v0

    return v0
.end method

.method public clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3562
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3565
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 3590
    :goto_0
    return v0

    .line 3569
    :catch_0
    move-exception v6

    .line 3570
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "FirewallPolicy"

    const-string v1, "clearGlobalProxyEnable.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 3571
    goto :goto_0

    .line 3574
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3577
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    .line 3580
    new-instance v7, Landroid/net/ProxyProperties;

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v7, v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3581
    .local v7, "emptyProxy":Landroid/net/ProxyProperties;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3582
    .local v8, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v7}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 3583
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v11

    .line 3585
    goto :goto_0

    .line 3586
    .end local v7    # "emptyProxy":Landroid/net/ProxyProperties;
    .end local v8    # "token":J
    :catch_1
    move-exception v6

    .line 3587
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "FirewallPolicy"

    const-string v1, "Clear Global Proxy - Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    move v0, v10

    .line 3590
    goto :goto_0
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z
    .param p3, "boot"    # Z

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 657
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 658
    .local v12, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 659
    .local v1, "containerId":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 661
    .local v13, "userId":I
    if-eqz p2, :cond_4

    .line 664
    invoke-direct {p0, v1, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v0

    if-ne v12, v0, :cond_0

    if-eqz p3, :cond_3

    .line 666
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    const-string v0, "proxy"

    invoke-direct {p0, v1, v12, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 671
    .local v10, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 672
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 674
    .local v6, "ruleUid":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 676
    .local v11, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 677
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 678
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 679
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 681
    .local v8, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v2, v8, v0

    const/4 v0, 0x1

    aget-object v3, v8, v0

    const/4 v4, 0x1

    const-string v5, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 711
    .end local v6    # "ruleUid":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v10    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 688
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 691
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 695
    :cond_4
    const-string v0, "FirewallPolicy"

    const-string v2, " Disabling proxy"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, v1, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v9

    .line 697
    .local v9, "enabledUid":I
    const-string v0, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Disabling proxy enabledUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    const-string v0, "FirewallPolicy"

    const-string v2, " setProxyRulesEnableOnDb true "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    if-ne v9, v12, :cond_1

    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableProxyOnIptables(Landroid/app/enterprise/ContextInfo;)Z

    .line 705
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    goto :goto_0

    .line 708
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enableProxyWithUid(IZI)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 647
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxyWithUid(ZI)Z
    .locals 2
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 651
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z
    .param p3, "boot"    # Z

    .prologue
    const/4 v3, 0x0

    .line 534
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 535
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 536
    .local v0, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 537
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v1

    .line 538
    .local v1, "enabledUid":I
    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRulesEnableOnDb(IZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 547
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 542
    :cond_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    if-nez p2, :cond_4

    :cond_2
    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p3, :cond_0

    .line 543
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    const/4 v3, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "containerId":I
    .end local v1    # "enabledUid":I
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public enableRulesWithUid(IZI)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 526
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableRulesWithUid(ZI)Z
    .locals 2
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 530
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(II)Ljava/util/List;

    move-result-object v0

    .line 432
    return-object v0
.end method

.method public getDNSPerApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3335
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3336
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3337
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3339
    .local v0, "adminUid":I
    if-nez p2, :cond_1

    move-object v2, v3

    .line 3347
    :cond_0
    :goto_0
    return-object v2

    .line 3343
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 3344
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 3345
    goto :goto_0
.end method

.method public getGlobalProxy(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3527
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3529
    .local v7, "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 3531
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3532
    .local v11, "token":J
    iget-object v13, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v9

    .line 3533
    .local v9, "proxy":Landroid/net/ProxyProperties;
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3535
    if-nez v9, :cond_1

    .line 3536
    const/4 v7, 0x0

    .line 3558
    .end local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "proxy":Landroid/net/ProxyProperties;
    .end local v11    # "token":J
    :cond_0
    :goto_0
    return-object v7

    .line 3538
    .restart local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "proxy":Landroid/net/ProxyProperties;
    .restart local v11    # "token":J
    :cond_1
    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getPort()I

    move-result v13

    invoke-direct {v10, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 3539
    .local v10, "stringPort":Ljava/lang/Integer;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3541
    .local v4, "host":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3543
    invoke-virtual {v9}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3544
    .local v2, "exclusion":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3546
    .local v8, "parts":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    .line 3547
    .local v3, "exclusionParts":Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3546
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3549
    .end local v3    # "exclusionParts":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_0

    .line 3552
    const/4 v7, 0x0

    goto :goto_0

    .line 3554
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "exclusion":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v9    # "proxy":Landroid/net/ProxyProperties;
    .end local v10    # "stringPort":Ljava/lang/Integer;
    .end local v11    # "token":J
    :catch_0
    move-exception v1

    .line 3555
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "FirewallPolicy"

    const-string v14, "getGlobalProxy.Exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getNetworkForMarket(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2714
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2715
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2716
    .local v0, "containerId":I
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "MarketNetworkType"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2719
    .local v1, "fromDb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2723
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRules(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 300
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 301
    .local v0, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 303
    .local v1, "uid":I
    packed-switch p2, :pswitch_data_0

    .line 315
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v2

    .line 305
    :pswitch_1
    const-string v2, "allow"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 307
    :pswitch_2
    const-string v2, "deny"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 309
    :pswitch_3
    const-string v2, "reroute"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 311
    :pswitch_4
    const-string v2, "proxy"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 313
    :pswitch_5
    const-string v2, "redirect_exception"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2332
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2333
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2340
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2341
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2342
    .local v2, "userId":I
    if-eqz p2, :cond_0

    .line 2343
    const/4 v3, -0x1

    iput v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2345
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2346
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    if-nez v3, :cond_1

    .line 2347
    const-string v3, "filtering"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    .line 2349
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    .line 2350
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2352
    :cond_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    return v3
.end method

.method public getURLFilterList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2382
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2383
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterListForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterListForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2390
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2392
    .local v1, "containerId":I
    const/4 v2, 0x0

    .line 2393
    .local v2, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2394
    .local v3, "userId":I
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getURLFilterList => userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callerUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " containerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allAdmins "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2396
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    if-ne p2, v7, :cond_2

    .line 2402
    iget-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    if-nez v4, :cond_1

    .line 2403
    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 2404
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2405
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v5

    .line 2406
    :try_start_0
    const-string v4, "FirewallPolicy"

    const-string v6, "getUrlBlackList - synchronized"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2408
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2409
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2410
    monitor-exit v5

    .line 2418
    :cond_0
    :goto_0
    return-object v2

    .line 2410
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2413
    :cond_1
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    goto :goto_0

    .line 2416
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2614
    const-string v10, "FirewallPolicy"

    const-string v11, "getURLFilterReport()"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2616
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2617
    .local v1, "containerId":I
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    .line 2618
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    .line 2619
    const/4 v10, 0x1

    const-string/jumbo v11, "time"

    aput-object v11, v0, v10

    .line 2620
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    .local v6, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 2623
    .local v7, "userId":I
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "containerID"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "userID"

    aput-object v11, v8, v10

    .line 2627
    .local v8, "where":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2631
    .local v9, "whereArgs":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterLogTable"

    invoke-virtual {v10, v11, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2633
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v3, :cond_1

    .line 2634
    const-string v10, "FirewallPolicy"

    const-string v11, "getURLFilterReport - cvList is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    const/4 v6, 0x0

    .line 2649
    .end local v6    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v6

    .line 2637
    .restart local v6    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    .line 2638
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2640
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2641
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 2642
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "time"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2643
    .local v5, "report":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 2644
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2645
    const-string/jumbo v10, "url"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2646
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2590
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getURLFilterReportEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2592
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    return v0
.end method

.method public getURLFilterReportEnabledForContentProvider(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2599
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2600
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2602
    .local v2, "userId":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2603
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    if-nez v3, :cond_0

    .line 2604
    const-string v3, "logging"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    .line 2606
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    .line 2607
    const-string v3, "FirewallCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caache.mUrlFilterReportState=> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2610
    :cond_0
    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    return v3
.end method

.method public isEnabledProxy(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 420
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v0

    .line 421
    .local v0, "enabledUid":I
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isEnabledProxy cxtInfo.mCallerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enabledUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_0

    .line 423
    const/4 v1, 0x1

    .line 425
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabledRules(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 408
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(II)I

    move-result v0

    .line 409
    .local v0, "enabledUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_0

    .line 410
    const/4 v1, 0x1

    .line 412
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGlobalProxyAllowed()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3516
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "globalProxy"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3519
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3522
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2430
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2431
    .local v5, "containerId":I
    const/4 v9, 0x0

    .line 2432
    .local v9, "isBlocked":Z
    const/4 v10, 0x0

    .line 2434
    .local v10, "lCallerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2436
    .local v16, "token":J
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2437
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2439
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    .line 2441
    .local v7, "filterEnabled":Z
    move-object/from16 v0, p1

    iput v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2443
    if-nez v7, :cond_0

    .line 2444
    const-string v20, "FirewallPolicy"

    const-string v21, "isUrlBlocked - Policy disabled"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const/16 v20, 0x0

    .line 2507
    :goto_0
    return v20

    .line 2448
    :cond_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2449
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2450
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v18

    .line 2451
    .local v18, "urlBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iput v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2452
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2454
    const-string v20, "FirewallPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "urlBlacklist: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2457
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2458
    .local v4, "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2459
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2460
    .local v3, "adminRule":Ljava/lang/String;
    const-string v20, "*"

    const-string v21, ".*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 2461
    .local v15, "regex":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2462
    .local v13, "newUrl":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 2463
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2464
    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2466
    :cond_2
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 2467
    const/16 v20, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2469
    :cond_3
    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 2470
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2474
    :cond_4
    :goto_1
    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2475
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2482
    :cond_5
    :goto_2
    :try_start_0
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 2483
    .local v14, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 2484
    .local v12, "matchUrl":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 2485
    if-nez v9, :cond_6

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2486
    const/16 v20, 0x0

    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2487
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 2488
    .local v11, "matchHost":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2494
    .end local v8    # "host":Ljava/lang/String;
    .end local v11    # "matchHost":Ljava/util/regex/Matcher;
    .end local v12    # "matchUrl":Ljava/util/regex/Matcher;
    .end local v14    # "pattern":Ljava/util/regex/Pattern;
    :cond_6
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_1

    .line 2496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2497
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v19

    .line 2498
    .local v19, "urlFilterEnabled":Z
    if-eqz v19, :cond_7

    .line 2499
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 2501
    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2506
    .end local v3    # "adminRule":Ljava/lang/String;
    .end local v4    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "newUrl":Ljava/lang/String;
    .end local v15    # "regex":Ljava/lang/String;
    .end local v19    # "urlFilterEnabled":Z
    :cond_8
    const-string v20, "FirewallPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isUrlBlocked: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v9

    .line 2507
    goto/16 :goto_0

    .line 2471
    .restart local v3    # "adminRule":Ljava/lang/String;
    .restart local v4    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "newUrl":Ljava/lang/String;
    .restart local v15    # "regex":Ljava/lang/String;
    :cond_9
    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2472
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 2477
    :cond_a
    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2478
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 2490
    :catch_0
    move-exception v6

    .line 2491
    .local v6, "e":Ljava/lang/Exception;
    const-string v20, "FirewallPolicy"

    const-string v21, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2423
    .local v2, "uid":I
    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 2424
    .local v0, "containerId":I
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isUrlBlocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 2426
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public listIptablesRules(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "************ FILTER TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    const-string v1, "/system/bin/iptables -t filter -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    const-string v1, "************ NAT TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    const-string v1, "/system/bin/iptables -t nat -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    const-string v1, "************ MANGLE TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    const-string v1, "/system/bin/iptables -t mangle -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    const-string v1, "************ RAW TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    const-string v1, "/system/bin/iptables -t raw -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2002
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2006
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 2007
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 2008
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3062
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3076
    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 3078
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 3054
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3055
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    .line 3056
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)Z

    .line 3057
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    .line 3058
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3067
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallPolicy.onPreContainerRemoval("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3069
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearDnsPerApp(II)Z

    .line 3070
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    .line 3071
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(Landroid/app/enterprise/ContextInfo;)Z

    .line 3072
    return-void
.end method

.method public removeAdmin(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 436
    const-string v4, "FirewallPolicy"

    const-string v5, "removeAdmin..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v2, 0x1

    .line 438
    .local v2, "ret":Z
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 439
    .local v3, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 440
    .local v1, "containerId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 442
    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    and-int/2addr v2, v4

    .line 444
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 445
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 446
    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 447
    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    .line 448
    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    .line 450
    return v2
.end method

.method public removeDNSForApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3230
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDNSForApp - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3232
    if-nez p2, :cond_0

    .line 3233
    const/4 v0, 0x0

    .line 3236
    :goto_0
    return v0

    .line 3235
    :cond_0
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDNSForApp - Begin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDNSForApp(ILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public removeRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 281
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 282
    .local v2, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 283
    .local v1, "containerId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, p3, p2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    :goto_0
    return v0

    .line 286
    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 291
    :pswitch_1
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v3, p2

    move v5, p3

    .line 289
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-direct {p0, v1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2514
    const-string v6, "FirewallPolicy"

    const-string v7, "saveURLBlockedReport"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2518
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v2, v6, :cond_0

    .line 2519
    const-string v6, "FirewallPolicy"

    const-string/jumbo v7, "will enforce MDM content provider permission"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v6

    const-string v7, "FirewallPolicy"

    const-string v8, "saveURLBlockedReport"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2525
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2526
    .local v5, "userId":I
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveURLBlockedReport > userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 2528
    .local v3, "time":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2529
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    const-string/jumbo v6, "time"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    const-string v6, "containerID"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2532
    const-string/jumbo v6, "userID"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2533
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterLogTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2535
    const-string v6, "FirewallPolicy"

    const-string v7, "isUrlBlocked - Failed on inserting log"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    :cond_1
    return-void
.end method

.method public setDNSPerApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dns1"    # Ljava/lang/String;
    .param p4, "dns2"    # Ljava/lang/String;

    .prologue
    .line 3126
    const-string v19, "FirewallPolicy"

    const-string v20, "setDNSPerApp - Begin"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3129
    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3130
    .local v13, "mContainerId":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3132
    .local v3, "adminUid":I
    const/4 v14, 0x0

    .line 3133
    .local v14, "ret":Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 3134
    :cond_0
    const/16 v19, 0x0

    .line 3225
    :goto_0
    return v19

    .line 3137
    :cond_1
    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 3138
    const/16 v19, 0x0

    goto :goto_0

    .line 3141
    :cond_2
    const/4 v6, 0x0

    .line 3142
    .local v6, "containerziedUid":I
    const/4 v5, 0x0

    .line 3144
    .local v5, "appUids":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;I)[I

    move-result-object v5

    .line 3145
    if-nez v5, :cond_3

    const/16 v19, 0x0

    goto :goto_0

    .line 3146
    :cond_3
    const/16 v19, 0x0

    aget v6, v5, v19

    .line 3148
    if-gez v6, :cond_4

    .line 3149
    const-string v19, "FirewallPolicy"

    const-string v20, "Package name not found in the container"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    const/16 v19, 0x0

    goto :goto_0

    .line 3153
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 3155
    const/16 v17, 0x0

    .line 3156
    .local v17, "uid":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3158
    .local v7, "cv":Landroid/content/ContentValues;
    move/from16 v17, v6

    .line 3159
    :try_start_0
    const-string v19, "FirewallPolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setDNSPerApp - packageName "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 3162
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 3164
    .local v11, "ifaceName":Ljava/lang/String;
    const-string v19, "adminUid"

    invoke-static {v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3165
    const-string v19, "packageName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    const-string v19, "dns1"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    const-string v19, "dns2"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    const-string v19, "interface"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getDnsFromPackage(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 3172
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3174
    .local v4, "alreadyAtDB":Z
    if-eqz v12, :cond_5

    .line 3175
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    .line 3176
    const/4 v4, 0x1

    .line 3180
    :cond_5
    if-eqz v4, :cond_8

    .line 3181
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3182
    .local v8, "cv2":Landroid/content/ContentValues;
    const-string v19, "interface"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    const-string v19, "packageName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    const-string v19, "adminUid"

    invoke-static {v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "DNSPerApp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v18

    .line 3188
    .local v18, "updated":I
    if-lez v18, :cond_6

    .line 3189
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3190
    .local v9, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3191
    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3195
    .local v15, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3198
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3199
    const/4 v14, 0x1

    .line 3222
    .end local v4    # "alreadyAtDB":Z
    .end local v8    # "cv2":Landroid/content/ContentValues;
    .end local v9    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "ifaceName":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "token":J
    .end local v18    # "updated":I
    :cond_6
    :goto_1
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v17    # "uid":I
    :cond_7
    move/from16 v19, v14

    .line 3225
    goto/16 :goto_0

    .line 3203
    .restart local v4    # "alreadyAtDB":Z
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "ifaceName":Ljava/lang/String;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "uid":I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "DNSPerApp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 3204
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    .restart local v9    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3210
    .restart local v15    # "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v11, v1, v2}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3212
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3213
    const/4 v14, 0x1

    goto :goto_1

    .line 3218
    .end local v4    # "alreadyAtDB":Z
    .end local v9    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "ifaceName":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "token":J
    :catch_0
    move-exception v10

    .line 3219
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v19, "FirewallPolicy"

    const-string v20, "Exception "

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3220
    const/4 v14, 0x0

    goto :goto_1

    .line 3222
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    throw v19
.end method

.method public declared-synchronized setGlobalProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3453
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 3456
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string v6, "globalProxy"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 3458
    const/4 v2, 0x0

    .line 3512
    :goto_0
    monitor-exit p0

    return v2

    .line 3460
    :catch_0
    move-exception v11

    .line 3461
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "FirewallPolicy"

    const-string v3, "setGlobalProxy.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    const/4 v2, 0x0

    goto :goto_0

    .line 3467
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 3469
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3472
    :cond_2
    if-gez p3, :cond_3

    .line 3473
    const/16 p3, 0x0

    .line 3475
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3478
    if-eqz p4, :cond_4

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3479
    :cond_4
    const-string v12, ""

    .line 3493
    .local v12, "exclusionString":Ljava/lang/String;
    :goto_1
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3494
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    new-instance v14, Landroid/net/ProxyProperties;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3498
    .local v14, "proxy":Landroid/net/ProxyProperties;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)Z

    .line 3501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3502
    .local v15, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v14}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 3503
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string v6, "globalProxy"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 3481
    .end local v12    # "exclusionString":Ljava/lang/String;
    .end local v14    # "proxy":Landroid/net/ProxyProperties;
    .end local v15    # "token":J
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3482
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 3483
    .local v9, "domain":Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3484
    .local v10, "domainAddress":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 3485
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3489
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_2

    .line 3487
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 3491
    .end local v10    # "domainAddress":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .restart local v12    # "exclusionString":Ljava/lang/String;
    goto :goto_1

    .line 3508
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "domain":Z
    .end local v12    # "exclusionString":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v11

    .line 3509
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "FirewallPolicy"

    const-string v3, "setGlobalProxy.Exception"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3512
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3453
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setNetworkForMarket(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "networkType"    # I

    .prologue
    .line 2658
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2659
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2660
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2661
    .local v1, "admin":I
    const/4 v6, 0x0

    .line 2662
    .local v6, "result":Z
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 2663
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 2666
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V

    .line 2668
    :cond_1
    int-to-long v3, v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2669
    return v6
.end method

.method public setProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 467
    const-string v0, "FirewallPolicy"

    const-string v1, "setProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 469
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 470
    .local v9, "uid":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 471
    .local v6, "containerId":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v8, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v10

    .line 488
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v7

    .line 479
    .local v7, "enabledUid":I
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    const-string v5, "proxy"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRules(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    if-ne v7, v9, :cond_0

    .line 483
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Landroid/app/enterprise/ContextInfo;Z)Z

    goto :goto_0

    :cond_2
    move v4, v10

    .line 488
    goto :goto_0
.end method

.method public setRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 245
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, p3, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return v0

    .line 249
    :cond_0
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2299
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setURLFilterEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2301
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2302
    .local v1, "containerId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2303
    .local v4, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2305
    .local v5, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2306
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v6, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterSettingsTable"

    invoke-virtual {v6, v4, v1, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 2310
    .local v3, "ret":Z
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 2312
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2313
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v7, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v7

    .line 2314
    :try_start_0
    iget-object v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2315
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    .line 2316
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2317
    invoke-direct {p0, v0, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2318
    if-nez p2, :cond_0

    .line 2319
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WebFilterTable"

    invoke-virtual {v6, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    .line 2321
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2324
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v7, "FirewallPolicy/getURLFilterEnabled"

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2328
    .end local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :cond_1
    return v3

    .line 2321
    .restart local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2356
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2357
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2358
    .local v1, "containerId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2359
    .local v3, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2361
    .local v4, "userId":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return v2

    .line 2364
    :cond_1
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result v2

    .line 2365
    .local v2, "ret":Z
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 2367
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2368
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    iget-object v6, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v6

    .line 2369
    :try_start_0
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2370
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2371
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2372
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v6, "FirewallPolicy/getURLFilterList"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2372
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2541
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2542
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2543
    .local v1, "containerId":I
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2544
    .local v8, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 2546
    .local v10, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2547
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "logging"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WebFilterSettingsTable"

    invoke-virtual {v11, v8, v1, v12, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 2551
    .local v3, "ret":Z
    const/4 v11, 0x1

    if-ne v3, v11, :cond_0

    .line 2552
    const-string v11, "FirewallPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(II)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v0

    .line 2554
    .local v0, "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    .line 2555
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    .line 2556
    invoke-direct {p0, v0, v10, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshFirewallCache(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;II)Z

    .line 2559
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v12, "FirewallPolicy/getURLFilterReportEnabled"

    invoke-static {v11, v12, v10}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2566
    .end local v0    # "cache":Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2567
    .local v6, "token":J
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v9

    .line 2568
    .local v9, "urlFilterReportEnabled":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2569
    if-eqz p2, :cond_1

    if-nez v9, :cond_2

    .line 2570
    :cond_1
    const-string v11, "FirewallPolicy"

    const-string/jumbo v12, "setURLFilterReportEnabled - Clean url report"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "containerID"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "userID"

    aput-object v12, v4, v11

    .line 2577
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    const/4 v11, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    .line 2581
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WebFilterLogTable"

    invoke-virtual {v11, v12, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2585
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :cond_2
    const-string v11, "FirewallPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setURLFilterReportEnabled - return = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    return v3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 3050
    return-void
.end method
