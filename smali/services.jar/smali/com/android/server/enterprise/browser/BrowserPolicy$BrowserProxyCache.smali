.class Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrowserProxyCache"
.end annotation


# instance fields
.field private mAdminUid:I

.field private final mContainerId:I

.field private mProxySetting:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V
    .locals 1
    .param p2, "userId"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    .line 83
    iput p3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 106
    iget v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-eq v3, v4, :cond_0

    .line 107
    iput v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 108
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 109
    new-instance v0, Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const-string v4, "mdm.intent.action.clear.http.proxy"

    invoke-static {v3, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 113
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 115
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_0
    return-void
.end method

.method isAlreadySet()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOwner(I)Z
    .locals 1
    .param p1, "adminUid"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setProxy(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "proxySetting"    # Ljava/lang/String;
    .param p3, "broadcast"    # Z

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 91
    iput-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 92
    if-eqz p3, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const-string v4, "mdm.intent.action.set.http.proxy"

    invoke-static {v3, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mdm.intent.extra.http.proxy.server"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 98
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 100
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_0
    return-void
.end method
