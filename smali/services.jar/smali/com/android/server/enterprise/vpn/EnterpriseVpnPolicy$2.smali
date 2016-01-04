.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 537
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 538
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "packageName":Ljava/lang/String;
    const-string v5, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 540
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 541
    .local v4, "userId":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 542
    new-instance v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {v2, v5, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 543
    .local v2, "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mProxyConnections:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->startConnection()V

    .line 559
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 548
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 550
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string v5, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 552
    .restart local v4    # "userId":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 553
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mProxyConnections:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;

    .line 554
    .restart local v2    # "proxyConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->stopConnection()V

    goto :goto_0
.end method
