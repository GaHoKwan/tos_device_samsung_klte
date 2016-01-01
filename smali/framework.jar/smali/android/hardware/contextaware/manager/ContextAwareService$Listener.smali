.class public final Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field private mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

.field private final mServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/contextaware/manager/ContextAwareService;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 533
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    .line 535
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 536
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 516
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 516
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;)Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p1, "x1"    # Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    .prologue
    .line 516
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    return-object p1
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 516
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 516
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    .line 586
    .local v0, "callback":Landroid/hardware/contextaware/manager/IContextAwareCallback;
    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v0, p1, p2}, Landroid/hardware/contextaware/manager/IContextAwareCallback;->caCallback(ILandroid/os/Bundle;)V

    .line 588
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v3, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 595
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    .end local v0    # "callback":Landroid/hardware/contextaware/manager/IContextAwareCallback;
    :goto_0
    monitor-exit p0

    return-void

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "de":Landroid/os/DeadObjectException;
    :try_start_2
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 595
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 584
    .end local v1    # "de":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 592
    :catch_1
    move-exception v2

    .line 593
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 595
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    .prologue
    .line 546
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 547
    const-string v0, "[binderDied 01] Mutex is locked for binderDied"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 550
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 551
    .local v9, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 552
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v7, v6

    .local v7, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 555
    .local v8, "service":I
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$400(Landroid/hardware/contextaware/manager/ContextAwareService;)Landroid/hardware/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Landroid/hardware/contextaware/manager/fault/CmdProcessResultManager;

    const/4 v5, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 569
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v8    # "service":I
    .end local v9    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    const-string v1, "[binderDied 02] Mutex is unlocked for binderDied"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 569
    throw v0

    .line 566
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v7    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v9    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 567
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    const-string v0, "[binderDied 02] Mutex is unlocked for binderDied"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 572
    return-void
.end method

.method public decreaseServiceCount(I)V
    .locals 4
    .param p1, "service"    # I

    .prologue
    .line 633
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 641
    .local v0, "count":I
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getServices()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .locals 4
    .param p1, "service"    # I

    .prologue
    .line 615
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 623
    .local v0, "count":I
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setContextCollectionResultNotifyCompletion(Z)V
    .locals 1
    .param p1, "completion"    # Z

    .prologue
    .line 661
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v0, p1}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    .line 662
    return-void
.end method
