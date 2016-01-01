.class Landroid/hardware/contextaware/manager/ContextObserverManager;
.super Ljava/lang/Object;
.source "ContextObserverManager.java"


# instance fields
.field private final mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IContextObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 111
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;

    .line 115
    .local v1, "observer":Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1, p1, p2}, Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;->updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 119
    .end local v1    # "observer":Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;
    :cond_1
    return-void
.end method

.method protected final notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IContextObserver;

    .line 69
    .local v1, "observer":Landroid/hardware/contextaware/manager/IContextObserver;
    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1, p1, p2}, Landroid/hardware/contextaware/manager/IContextObserver;->updateContext(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 73
    .end local v1    # "observer":Landroid/hardware/contextaware/manager/IContextObserver;
    :cond_1
    return-void
.end method

.method protected final registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method

.method protected final registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/IContextObserver;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method

.method protected final unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method protected final unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/IContextObserver;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextObserverManager;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method
