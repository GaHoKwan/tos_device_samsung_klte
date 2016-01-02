.class Landroid/hardware/contextaware/manager/fault/UnregisterCmdOperationRestore;
.super Landroid/hardware/contextaware/manager/fault/RestoreTransaction;
.source "UnregisterCmdOperationRestore.java"


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/manager/ContextManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/hardware/contextaware/manager/ContextManager;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/fault/RestoreTransaction;-><init>(Landroid/hardware/contextaware/manager/ContextManager;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final getRestoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "UNREGISTER_CMD_RESTORE"

    return-object v0
.end method

.method protected final runRestore(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I
    .param p3, "observer"    # Landroid/hardware/contextaware/manager/IContextObserver;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v0, "listener is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 51
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/fault/UnregisterCmdOperationRestore;->getContextManager()Landroid/hardware/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/hardware/contextaware/manager/ContextManager;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;I)V

    .line 55
    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    goto :goto_0
.end method
