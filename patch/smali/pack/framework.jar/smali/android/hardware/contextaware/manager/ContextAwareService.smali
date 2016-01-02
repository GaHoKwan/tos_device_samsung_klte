.class public Landroid/hardware/contextaware/manager/ContextAwareService;
.super Landroid/hardware/contextaware/manager/IContextAwareService$Stub;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;,
        Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    }
.end annotation


# static fields
.field public static final BINDER_DIED_OPERATION:I = 0x3

.field public static final NORMAL_OPERATION:I = 0x1

.field private static final NOTIFY_WATING_TIME:I = 0x6

.field public static final RESTORE_OPERATION:I = 0x2


# instance fields
.field private volatile isVersionSetting:Z

.field private mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

.field private mCmdProcessResultNotifyCompletion:Z

.field private mContextCollectionResultNotifyCompletion:Z

.field private mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 93
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/IContextAwareService$Stub;-><init>()V

    .line 75
    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 78
    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 81
    iput v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mVersion:I

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    .line 94
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "context_aware"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "mHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 99
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 100
    sget-object v2, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v2, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v2, p0, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;-><init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 107
    new-instance v2, Landroid/hardware/contextaware/manager/ContextManager;

    iget v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mVersion:I

    invoke-direct {v2, p1, v0, v3}, Landroid/hardware/contextaware/manager/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    .line 109
    new-instance v2, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-direct {v2, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    .line 110
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/ContextManager;->getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/manager/ListenerListManager;->setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 115
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->initializeManager(Landroid/hardware/contextaware/manager/ContextManager;)V

    goto :goto_0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/manager/ContextAwareService;)Landroid/hardware/contextaware/manager/ContextManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    return p1
.end method

.method static synthetic access$602(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    return p1
.end method

.method private displayUsedCountForService(I)V
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCollectionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I

    .prologue
    const/4 v5, 0x1

    .line 271
    invoke-static {}, Landroid/hardware/contextaware/InterruptModeContextList;->getInstance()Landroid/hardware/contextaware/InterruptModeContextList;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/InterruptModeContextList;->isInterruptModeType(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 287
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_3
    invoke-virtual {p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    .line 292
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0, v5}, Landroid/hardware/contextaware/manager/ContextManager;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;I)V

    .line 305
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v0

    if-nez v0, :cond_5

    .line 306
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    .line 310
    :cond_5
    const-string v0, "complete notify the operation result."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->isRestoreEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->runRestore(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/hardware/contextaware/manager/IContextObserver;)V

    goto :goto_0

    .line 294
    :cond_6
    const-string v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 296
    invoke-virtual {p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->decreaseServiceCount(I)V

    .line 297
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_7

    .line 298
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_7
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    goto :goto_1

    .line 315
    :cond_8
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isUsableService(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I

    .prologue
    .line 795
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showListenerList()V
    .locals 9

    .prologue
    .line 243
    const-string v7, "===== Context Aware Service List ====="

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 247
    .local v4, "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 248
    .local v6, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 249
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v2

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 251
    .local v5, "service":I
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    .local v0, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Service : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0    # "count":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .end local v5    # "service":I
    .end local v6    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method private waitForNotifyOperationCheckResult()Z
    .locals 4

    .prologue
    .line 422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    .line 424
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 425
    iget-boolean v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 427
    const/4 v2, 0x1

    .line 435
    :goto_1
    return v2

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 435
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 422
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getContextInfo(Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I

    .prologue
    const/4 v8, 0x1

    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "isListener":Z
    const/4 v3, 0x0

    .line 333
    .local v3, "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContext 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 338
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 339
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 341
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    move-object v3, v0

    .line 344
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 348
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    new-instance v5, Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v5, v6, v7}, Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;)V

    invoke-virtual {v4, v5}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 355
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/manager/ListenerListManager;->addListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 357
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, p0}, Landroid/hardware/contextaware/manager/ContextManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    const/4 v2, 0x1

    .line 363
    :cond_2
    if-nez v2, :cond_9

    .line 364
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 371
    :cond_3
    :goto_0
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Landroid/hardware/contextaware/manager/ContextManager;->unregisterObservers(Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 374
    if-eqz v3, :cond_4

    .line 375
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-ne v4, v8, :cond_a

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 377
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 383
    :cond_4
    :goto_1
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContext 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 388
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 390
    return-void

    .line 363
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v4

    if-nez v2, :cond_7

    .line 364
    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 371
    :cond_5
    :goto_2
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Landroid/hardware/contextaware/manager/ContextManager;->unregisterObservers(Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 374
    if-eqz v3, :cond_6

    .line 375
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-ne v5, v8, :cond_8

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 377
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 383
    :cond_6
    :goto_3
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getContext 02] Mutex is unlocked for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 388
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    throw v4

    .line 366
    :cond_7
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v5

    if-nez v5, :cond_5

    .line 367
    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 378
    :cond_8
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 379
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 366
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_9
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v4

    if-nez v4, :cond_3

    .line 367
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :cond_a
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mVersion:I

    return v0
.end method

.method public final initializeAutoTest()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    .line 824
    return-void
.end method

.method public final registerCallback(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 138
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 139
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "isExistListener":Z
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 145
    .local v3, "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const-string v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 150
    const/4 v1, 0x1

    .line 154
    .end local v3    # "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    if-nez v1, :cond_2

    .line 155
    new-instance v2, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    invoke-direct {v2, p0, p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;-><init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 156
    .local v2, "listener":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    new-instance v4, Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v4, v5, v6}, Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;)V

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;
    invoke-static {v2, v4}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$102(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;)Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    .line 158
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 159
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->addListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 160
    const-string v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v2, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 164
    .end local v2    # "listener":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_2
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 165
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->showListenerList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    return-void

    .line 168
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isExistListener":Z
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    throw v4
.end method

.method public final resetCAService(I)V
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 481
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 486
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextManager;->reset(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 02] Mutex is unlocked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 495
    return-void

    .line 491
    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reset 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    throw v0
.end method

.method public final setCALogger(ZZIZ)V
    .locals 0
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 813
    invoke-static {p1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->setConsoleLoggingEnable(Z)V

    .line 814
    invoke-static {p2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->setFileLoggingEnable(Z)V

    .line 815
    invoke-static {p3, p4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->setLogOption(IZ)V

    .line 816
    return-void
.end method

.method public final setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z
    .locals 4
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 453
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    .line 460
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/hardware/contextaware/manager/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 469
    return v0

    .line 463
    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setProperty 02] Mutex is unlocked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 463
    throw v1
.end method

.method public final setCmdProcessResultNotifyCompletion(Z)V
    .locals 0
    .param p1, "completion"    # Z

    .prologue
    .line 850
    iput-boolean p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 851
    return-void
.end method

.method public final setScenarioForDebugging(II[B)Z
    .locals 1
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .param p3, "packet"    # [B

    .prologue
    .line 882
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForDebugging(II[B)Z

    move-result v0

    return v0
.end method

.method public final setScenarioForTest(II)Z
    .locals 1
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 865
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForTest(II)Z

    move-result v0

    return v0
.end method

.method public final setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 893
    iget-boolean v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    if-eqz v0, :cond_0

    .line 894
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 903
    :goto_0
    return-void

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 900
    iput p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mVersion:I

    .line 901
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->setVersion(I)V

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    goto :goto_0
.end method

.method public final startAutoTest()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->startAutoTest()V

    .line 832
    return-void
.end method

.method public final stopAutoTest()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->stopAutoTest()V

    .line 840
    return-void
.end method

.method public final unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v1, 0x1

    .line 193
    .local v1, "isEmptyListener":Z
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 198
    :try_start_0
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 199
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 201
    const/4 v2, 0x0

    .line 203
    .local v2, "listener":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 206
    .local v3, "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    move-object v2, v3

    .line 210
    const-string v4, "UNREGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 215
    .end local v3    # "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    if-eqz v2, :cond_2

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 216
    :cond_2
    const/4 v1, 0x0

    .line 219
    :cond_3
    if-eqz v1, :cond_4

    .line 220
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 221
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 224
    :cond_4
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 225
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->showListenerList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    return v1

    .line 228
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "listener":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->getInstance()Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 233
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 228
    throw v4
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 509
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method
