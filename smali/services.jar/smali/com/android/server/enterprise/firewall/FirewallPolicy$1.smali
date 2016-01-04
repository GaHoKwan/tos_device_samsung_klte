.class Lcom/android/server/enterprise/firewall/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0

    .prologue
    .line 3617
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enableRulesWithContainerId(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 3640
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I
    invoke-static {v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I

    move-result v0

    .line 3641
    .local v0, "proxyUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Landroid/app/enterprise/ContextInfo;)V
    invoke-static {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$700(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/app/enterprise/ContextInfo;)V

    .line 3643
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;

    .line 3644
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$900(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3645
    monitor-exit p0

    return-void

    .line 3640
    .end local v0    # "proxyUid":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3620
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3621
    :cond_0
    const-string v3, "FirewallPolicy"

    const-string v4, "Received intent: android.intent.action.BOOT_COMPLETEDor android.intent.action.USER_ADDED"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3625
    .local v0, "containerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->enableRulesWithContainerId(I)V

    .line 3626
    if-eqz v0, :cond_1

    .line 3627
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3628
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->enableRulesWithContainerId(I)V

    .line 3627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3631
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z

    .line 3632
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3637
    .end local v0    # "containerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    return-void

    .line 3633
    :catch_0
    move-exception v1

    .line 3634
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FirewallPolicy"

    const-string v4, "Exception: "

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
