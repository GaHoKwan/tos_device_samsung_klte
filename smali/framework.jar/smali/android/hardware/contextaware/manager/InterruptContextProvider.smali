.class public Landroid/hardware/contextaware/manager/InterruptContextProvider;
.super Landroid/hardware/contextaware/manager/ContextProviderDecorator;
.source "InterruptContextProvider.java"


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextComponent;)V
    .locals 0
    .param p1, "provider"    # Landroid/hardware/contextaware/manager/ContextComponent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/ContextProviderDecorator;-><init>(Landroid/hardware/contextaware/manager/ContextComponent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 44
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 45
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->initialize()V

    .line 46
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    .line 47
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->enableForStart(I)V

    .line 48
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->registerApPowerObserver()V

    .line 50
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyFaultDetectionResult()V

    .line 53
    :cond_0
    return-void
.end method

.method public stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 64
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 65
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    .line 66
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->unregisterApPowerObserver()V

    .line 67
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->disableForStop(I)V

    .line 69
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyFaultDetectionResult()V

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/InterruptContextProvider;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->terminate()V

    .line 74
    return-void
.end method
