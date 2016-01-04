.class public Lcom/lguplus/ho_client/PolicyProxy;
.super Ljava/lang/Object;
.source "PolicyProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/ho_client/PolicyProxy$HOClientClassLoader;
    }
.end annotation


# static fields
.field public static final EVENT_HANDLE_CONNECT:I = 0x3e8

.field static final HO_CLS_NAME:Ljava/lang/String; = "com.lguplus.ho_client_impl.HOClientImpl"

.field static final HO_PKG_NAME:Ljava/lang/String; = "com.lguplus.ho_client_impl"

.field static final TAG:Ljava/lang/String; = "lguplusHandover"


# instance fields
.field hoClient:Lcom/lguplus/ho_client/HOClient;

.field isEnabled:Z

.field mContext:Landroid/content/Context;

.field mNetTrackers:[Landroid/net/NetworkStateTracker;

.field mPkgMgr:Landroid/content/pm/PackageManager;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/net/NetworkStateTracker;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mNetTrackers"    # [Landroid/net/NetworkStateTracker;
    .param p3, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    .line 28
    iput-boolean v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    .line 38
    new-instance v1, Lcom/lguplus/ho_client/PolicyProxy$1;

    invoke-direct {v1, p0}, Lcom/lguplus/ho_client/PolicyProxy$1;-><init>(Lcom/lguplus/ho_client/PolicyProxy;)V

    iput-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    const-string v1, "PolicyProxy()"

    invoke-virtual {p0, v1}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/lguplus/ho_client/PolicyProxy;->mContext:Landroid/content/Context;

    .line 61
    iput-boolean p3, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    .line 62
    iput-object p2, p0, Lcom/lguplus/ho_client/PolicyProxy;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 63
    iget-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 64
    if-eqz p3, :cond_0

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    const-string v1, "com.lguplus.ho_client_impl"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 69
    iget-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    .end local v0    # "f":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public delayHandleConnect(Landroid/os/Handler;I)Z
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 175
    const-string v1, "delayHandleConnect"

    invoke-virtual {p0, v1}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 177
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v0, p1}, Lcom/lguplus/ho_client/HOClient;->delayHandleConnect(Landroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized getHoClient(Z)V
    .locals 11
    .param p1, "isReplaced"    # Z

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    if-nez p1, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    const-string v7, "get HOClient, apk load"

    invoke-virtual {p0, v7}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 86
    iget-object v7, p0, Lcom/lguplus/ho_client/PolicyProxy;->mPkgMgr:Landroid/content/pm/PackageManager;

    const-string v8, "com.lguplus.ho_client_impl"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 87
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get HOClient, apkPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 88
    new-instance v7, Lcom/lguplus/ho_client/PolicyProxy$HOClientClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/lguplus/ho_client/PolicyProxy$HOClientClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v8, "com.lguplus.ho_client_impl.HOClientImpl"

    invoke-virtual {v7, v8}, Lcom/lguplus/ho_client/PolicyProxy$HOClientClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 89
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get HOClient, cls : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 90
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, [Landroid/net/NetworkStateTracker;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lguplus/ho_client/PolicyProxy;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lguplus/ho_client/PolicyProxy;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lguplus/ho_client/HOClient;

    iput-object v7, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 91
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v4, v1, v5

    .line 93
    .local v4, "es":Ljava/lang/StackTraceElement;
    const-string v7, "lguplusHandover"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    .end local v4    # "es":Ljava/lang/StackTraceElement;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHOClient:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 83
    .end local v1    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public isRequiredToRestoreDefaultNetwork(Landroid/os/Handler;ILjava/lang/String;I)Z
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "currentPid"    # I

    .prologue
    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRequiredToRestoreDefaultNetwork, type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 186
    iget-object v1, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-eqz v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lguplus/ho_client/HOClient;->isRequiredToRestoreDefaultNetwork(Landroid/os/Handler;ILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isTeardownRequiredOnConnect(II)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "activeDefaultNetwork"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-boolean v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOClient isTeardownRequiredOnConnect, type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activeDefaultNetwork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 104
    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v2, p1, p2}, Lcom/lguplus/ho_client/HOClient;->isTeardownRequiredOnConnect(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTeardownRequiredOnConnect, e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isValidDefaultNetworkOnConnect(II)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "activeDefaultNetwork"    # I

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-boolean v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOClient isValidDefaultNetworkOnConnect, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activeDefaultNetwork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 118
    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_0

    .line 119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lguplus/ho_client/PolicyProxy;->setNetworkInfo(I)V

    .line 120
    if-ne p1, v1, :cond_3

    .line 121
    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v2, p1, p2}, Lcom/lguplus/ho_client/HOClient;->isValidDefaultNetworkOnConnect(II)Z

    move-result v1

    goto :goto_0

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v2, p1, p2}, Lcom/lguplus/ho_client/HOClient;->isValidDefaultNetworkOnConnect(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidDefaultNetworkOnConnect,  e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isValidDefaultNetworkOnFailover(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    iget-boolean v3, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    if-nez v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v2

    .line 133
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOClient isValidDefaultNetworkOnFailover, type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 134
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 135
    iget-object v3, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_0

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v3, p1}, Lcom/lguplus/ho_client/HOClient;->isValidDefaultNetworkOnFailover(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lguplus/ho_client/PolicyProxy;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidDefaultNetworkOnFailover, e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "lguplusHandover"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public setDefaultNetworkChange(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 168
    const-string v0, "get HOClient, setDefaultNetworkChange"

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 170
    iget-boolean v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v0, p1}, Lcom/lguplus/ho_client/HOClient;->setDefaultNetworkChange(I)V

    goto :goto_0
.end method

.method public setMobileEnableWhenNSWOActived(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 161
    const-string v0, "policy proxy setMobileEnableWhenNSWOActived"

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v0, p1}, Lcom/lguplus/ho_client/HOClient;->setMobileEnableWhenNSWOActived(Z)V

    goto :goto_0
.end method

.method public setNetworkInfo(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 144
    iget-boolean v5, p0, Lcom/lguplus/ho_client/PolicyProxy;->isEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-nez v5, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNetworkInfo type :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    .line 147
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    .line 148
    iget-object v5, p0, Lcom/lguplus/ho_client/PolicyProxy;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, p1

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 149
    .local v3, "lp":Landroid/net/LinkProperties;
    const/4 v1, 0x0

    .line 150
    .local v1, "gateway":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 151
    .local v4, "r":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 153
    .end local v4    # "r":Landroid/net/RouteInfo;
    :cond_3
    iget-object v5, p0, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v1}, Lcom/lguplus/ho_client/HOClient;->setNetworkInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "gateway":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNetworkInfo error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
