.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PowerNotiRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 184
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    .line 185
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 153
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 154
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 155
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 140
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 141
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 142
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Noti"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getUsedTotalCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 166
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const-string v0, "success"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 116
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 128
    return-object p0
.end method

.method public final updateApPowerStatus(IJ)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "data":I
    const/16 v2, -0x2f

    if-ne p1, v2, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 103
    :goto_0
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 105
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    .line 106
    :cond_0
    return-void

    .line 97
    :cond_1
    const/16 v2, -0x2e

    if-ne p1, v2, :cond_0

    .line 98
    const/4 v0, 0x2

    goto :goto_0
.end method
