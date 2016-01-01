.class public Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;
.super Ljava/lang/Object;
.source "FaultDetectionManager.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;


# instance fields
.field private mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

.field private mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->instance:Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->instance:Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->instance:Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->instance:Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getCmdProcessResultObserver()Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method public final initializeManager(Landroid/hardware/contextaware/manager/ContextManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/hardware/contextaware/manager/ContextManager;

    .prologue
    .line 59
    new-instance v0, Landroid/hardware/contextaware/manager/fault/RestoreManager;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/manager/fault/RestoreManager;-><init>(Landroid/hardware/contextaware/manager/ContextManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    .line 60
    return-void
.end method

.method public final initializeRestoreManager()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/fault/RestoreManager;->initializeManager()V

    goto :goto_0
.end method

.method public final isRestoreEnable()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/fault/RestoreManager;->isRestoreEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public final registerCmdProcessResultManager(Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "mCmdProcessResultManager is already registered"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    goto :goto_0
.end method

.method public final runRestore(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I
    .param p4, "observer"    # Landroid/hardware/contextaware/manager/IContextObserver;

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/contextaware/manager/fault/RestoreManager;->runRestore(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/hardware/contextaware/manager/IContextObserver;)V

    goto :goto_0
.end method

.method public final setRestoreEnable()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/fault/RestoreManager;->setRestoreEnable()V

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Landroid/hardware/contextaware/manager/fault/RestoreManager;

    .line 67
    return-void
.end method

.method public final unregisterCmdProcessResultManager()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    .line 89
    return-void
.end method

.method public final updateContextAwareServiceFatalError()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final updateSensorHubFatalError()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
