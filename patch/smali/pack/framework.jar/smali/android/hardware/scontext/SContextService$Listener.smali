.class final Landroid/hardware/scontext/SContextService$Listener;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$Listener$CustomTimer;
    }
.end annotation


# instance fields
.field private final mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1499
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1500
    iput-object p2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    .line 1501
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    .line 1502
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1503
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService$Listener;

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService$Listener;

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService$Listener;

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private handleDiedBinder()V
    .locals 4

    .prologue
    .line 1564
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1565
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1566
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;-><init>(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextService$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1568
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1511
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1513
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1515
    .local v2, "service":I
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1517
    .local v3, "used":I
    const-string v4, "SContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binderDied() : Listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", used = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    if-ne v3, v7, :cond_0

    .line 1521
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1522
    .local v1, "isScreenOn":Z
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-nez v1, :cond_1

    .line 1523
    const-string v4, "SContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binderDied() : mPedometerExceptionMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v5, 0x1

    # setter for: Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I
    invoke-static {v4, v5}, Landroid/hardware/scontext/SContextService;->access$902(Landroid/hardware/scontext/SContextService;I)I

    .line 1526
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    # setter for: Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;
    invoke-static {v4, v5}, Landroid/hardware/scontext/SContextService;->access$1002(Landroid/hardware/scontext/SContextService;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1531
    .end local v1    # "isScreenOn":Z
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1538
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "service":I
    .end local v3    # "used":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1539
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService$Listener;->handleDiedBinder()V

    .line 1538
    throw v4

    .line 1528
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1    # "isScreenOn":Z
    .restart local v2    # "service":I
    .restart local v3    # "used":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->removeSContextService(I)V
    invoke-static {v4, v2}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;I)V

    goto :goto_1

    .line 1534
    .end local v1    # "isScreenOn":Z
    .end local v2    # "service":I
    .end local v3    # "used":I
    :cond_2
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1535
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1536
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->showListenerList()V
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$1300(Landroid/hardware/scontext/SContextService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1539
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService$Listener;->handleDiedBinder()V

    .line 1541
    return-void
.end method

.method public callback(Landroid/hardware/scontext/SContextEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 1551
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 1552
    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_0

    .line 1553
    invoke-interface {v0, p1}, Landroid/hardware/scontext/ISContextCallback;->scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    :cond_0
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SContextService"

    const-string v3, "Listener.callback(): Exception error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
