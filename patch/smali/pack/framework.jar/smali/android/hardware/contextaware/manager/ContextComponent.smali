.class public abstract Landroid/hardware/contextaware/manager/ContextComponent;
.super Ljava/lang/Object;
.source "ContextComponent.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/ICmdProcessResultObservable;
.implements Landroid/hardware/contextaware/manager/IContextObservable;
.implements Landroid/hardware/contextaware/manager/IContextProvider;


# instance fields
.field private final mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

.field private final mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/hardware/contextaware/manager/ContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    .line 39
    new-instance v0, Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextObserverManager;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    .line 40
    return-void
.end method

.method private clearContextBean()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextBean;->clearContextBean()V

    .line 354
    return-void
.end method

.method private notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->display()V

    .line 154
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextObserverManager;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clearContextBean()V

    .line 156
    return-void
.end method


# virtual methods
.method protected checkNotifyCondition()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clearContextBean()V

    .line 61
    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    .line 261
    return-void
.end method

.method public disable()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected disableForStop(I)V
    .locals 0
    .param p1, "operation"    # I

    .prologue
    .line 176
    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected enableForStart(I)V
    .locals 0
    .param p1, "operation"    # I

    .prologue
    .line 166
    return-void
.end method

.method protected final getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    return-object v0
.end method

.method protected getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 309
    return-void
.end method

.method public abstract getContextProvider()Landroid/hardware/contextaware/manager/ContextProvider;
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, ""

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getUsedServiceCount()I
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedSubCollectionCount()I
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedTotalCount()I
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected final isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getUsedTotalCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 409
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextObserverManager;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method protected notifyFaultDetectionResult()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected notifyInitContext()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getInitContextBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, "contextBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    :cond_0
    return-void
.end method

.method public final notifyObserver()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->checkNotifyCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextBean;->getContextBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->disable()V

    .line 241
    return-void
.end method

.method protected registerApPowerObserver()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 366
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 367
    return-void
.end method

.method public final registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/IContextObserver;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 116
    return-void
.end method

.method protected reset()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->enable()V

    .line 248
    return-void
.end method

.method protected final setProperty(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, "value":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_0

    .line 322
    const-string v0, "value is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPropertyValue(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method public abstract stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected unregisterApPowerObserver()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public final unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 379
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 380
    return-void
.end method

.method public final unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/IContextObserver;

    .prologue
    .line 127
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 128
    return-void
.end method

.method public updateApPowerStatusForPreparedCollection()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method
