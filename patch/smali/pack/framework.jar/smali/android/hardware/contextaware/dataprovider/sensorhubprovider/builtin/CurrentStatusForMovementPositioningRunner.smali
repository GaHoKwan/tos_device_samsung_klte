.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CurrentStatusForMovementPositioningRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;
.source "CurrentStatusForMovementPositioningRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 177
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 178
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    .line 179
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 154
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 155
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->enable()V

    .line 156
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Status"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 70
    .local v0, "packet":[B
    aput-byte v3, v0, v2

    .line 71
    aput-byte v2, v0, v3

    .line 73
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 131
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 143
    return-object p0
.end method

.method protected final getTimeOutCheckObserver()Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 0

    .prologue
    .line 167
    return-object p0
.end method

.method public occurTimeOut()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->occurTimeOut()V

    .line 121
    return-void
.end method

.method protected final parse(I[B)I
    .locals 6
    .param p1, "next"    # I
    .param p2, "packet"    # [B

    .prologue
    .line 84
    move v2, p1

    .line 86
    .local v2, "tmpNext":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CurrentStatusForMovementPositioningRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 88
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    array-length v4, p2

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    .line 89
    :cond_0
    sget-object v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 90
    const/4 v3, -0x1

    .line 96
    :goto_0
    return v3

    .line 93
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p2, v2

    .line 94
    .local v0, "data":I
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v2, v3

    .line 96
    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_0
.end method
