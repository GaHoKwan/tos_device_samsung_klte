.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnterpriseVpnServiceConnection"
.end annotation


# instance fields
.field mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

.field final mStartAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)V
    .locals 1
    .param p2, "startAction"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    .line 78
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mStartAction:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 99
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected for action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mStartAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    .line 101
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected for action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mStartAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    .line 108
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->startConnection()V

    .line 109
    return-void
.end method

.method startConnection()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    if-nez v0, :cond_0

    .line 85
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will bind to service with action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mStartAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mStartAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 88
    :cond_0
    return-void
.end method

.method stopConnection()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    .line 95
    return-void
.end method
