.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "TemperatureHumiditySensorRunner.java"


# instance fields
.field private mHumidityData:[D

.field private mTemperatureData:[D


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 93
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    .line 95
    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    .line 96
    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    .line 97
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 203
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 204
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 205
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 190
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 191
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 192
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LoggingStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const/4 v2, 0x3

    new-array v1, v2, [B

    .line 75
    .local v1, "packet":[B
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 77
    .local v0, "data":[B
    const/4 v2, 0x6

    aput-byte v2, v1, v3

    .line 78
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 79
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 81
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 217
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 166
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 178
    return-object p0
.end method

.method public final parse([BI)I
    .locals 12
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v6, -0x1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 120
    .local v5, "tmpPacket":[B
    move v3, p2

    .line 122
    .local v3, "tmpNext":I
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x2

    if-gez v7, :cond_0

    .line 123
    sget-object v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v6

    .line 155
    :goto_0
    return v4

    .line 127
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v7, v5, v3

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v8, v5, v4

    and-int/lit16 v8, v8, 0xff

    add-int v2, v7, v8

    .line 129
    .local v2, "sensorCount":I
    if-gtz v2, :cond_1

    .line 130
    sget-object v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_SENSOR_COUNT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v6

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    new-array v7, v2, [D

    iput-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    .line 136
    new-array v7, v2, [D

    iput-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 139
    array-length v7, v5

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x2

    if-gez v7, :cond_2

    .line 140
    sget-object v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    move v4, v6

    .line 141
    goto :goto_0

    .line 144
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_2
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v8, v5, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v9, v5, v3

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v8, v10

    aput-wide v8, v7, v0

    .line 145
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v8, v5, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v9, v5, v3

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-double v8, v8

    div-double/2addr v8, v10

    aput-wide v8, v7, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getLoggingStatus()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 150
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    invoke-virtual {v6, v7, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 151
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    invoke-virtual {v6, v7, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 153
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    move v3, v4

    .line 155
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto/16 :goto_0
.end method
