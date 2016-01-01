.class public Landroid/hardware/contextaware/aggregator/BatchAggregator;
.super Landroid/hardware/contextaware/manager/BatchContextProvider;
.source "BatchAggregator.java"


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextComponent;)V
    .locals 0
    .param p1, "provider"    # Landroid/hardware/contextaware/manager/ContextComponent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/BatchContextProvider;-><init>(Landroid/hardware/contextaware/manager/ContextComponent;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 46
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 47
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/BatchAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 48
    return-void
.end method

.method public final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 59
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 60
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/BatchAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 61
    return-void
.end method
