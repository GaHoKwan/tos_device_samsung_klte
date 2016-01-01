.class public final Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/manager/ContextAwareService;


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 677
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    .line 678
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 679
    return-void
.end method

.method private callback(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 711
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 712
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 714
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    if-eqz v1, :cond_0

    .line 718
    # getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    # invokes: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$700(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 722
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    return-void
.end method

.method private notifyOperationCheckResult(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 737
    sget-object v6, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v6}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 781
    :goto_0
    return v4

    .line 741
    :cond_0
    if-nez p2, :cond_1

    .line 742
    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_1
    const-string v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 748
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 749
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .line 751
    goto :goto_0

    .line 754
    :cond_2
    const-string v4, "Binder"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 755
    .local v0, "binder":Landroid/os/IBinder;
    const-string v4, "Service"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 757
    .local v3, "service":I
    if-nez v0, :cond_3

    .line 758
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .line 760
    goto :goto_0

    .line 763
    :cond_3
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListener(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    move-result-object v2

    .line 766
    .local v2, "listener":Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    if-nez v2, :cond_5

    .line 767
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 769
    const-string v4, "CheckResult"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 770
    const-string v4, "This cmd proccess was stopped and that\'s because the fault detection result is not success"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 771
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v4, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    :cond_4
    :goto_1
    move v4, v5

    .line 781
    goto :goto_0

    .line 773
    :cond_5
    const-string v4, "Service"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 774
    const-string v4, "Listener"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 775
    # invokes: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v2, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$700(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 777
    :cond_6
    sget-object v4, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 689
    .local v2, "type":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 691
    .local v0, "context":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->notifyOperationCheckResult(ILandroid/os/Bundle;)Z

    move-result v1

    .line 693
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 694
    invoke-direct {p0, v2, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->callback(ILandroid/os/Bundle;)V

    .line 699
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    .line 696
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    # setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z
    invoke-static {v3, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$602(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v1    # "result":Z
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
