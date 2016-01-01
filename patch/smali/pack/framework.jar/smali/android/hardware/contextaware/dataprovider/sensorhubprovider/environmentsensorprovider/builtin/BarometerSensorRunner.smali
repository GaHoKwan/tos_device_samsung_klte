.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "BarometerSensorRunner.java"


# instance fields
.field private mBarometerData:[I

.field private mBarometerInitData:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 91
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 95
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 203
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 204
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    .line 205
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 190
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 191
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    .line 192
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Barometer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-array v1, v6, [B

    .line 73
    .local v1, "packet":[B
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 75
    .local v0, "data":[B
    aput-byte v6, v1, v3

    .line 76
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 77
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 79
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 217
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getFaultDetectionResult()Landroid/os/Bundle;

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
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v6, -0x1

    .line 117
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 118
    .local v5, "tmpPacket":[B
    move v3, p2

    .line 120
    .local v3, "tmpNext":I
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_0

    move v4, v6

    .line 155
    :goto_0
    return v4

    .line 124
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v5, v3

    .line 125
    .local v2, "sensorCount":I
    if-gtz v2, :cond_1

    .line 126
    mul-int/lit8 v2, v2, -0x1

    .line 128
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v7, v5, v4

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v8, v5, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    iput v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    :cond_1
    move v3, v4

    .line 132
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    new-array v7, v2, [I

    iput-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 135
    array-length v7, v5

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_2

    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    move v4, v6

    .line 136
    goto :goto_0

    .line 139
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_2
    if-gtz v0, :cond_3

    .line 140
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, v5, v4

    add-int/2addr v8, v9

    aput v8, v7, v0

    .line 147
    :goto_2
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    aget v7, v7, v0

    iput v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 134
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    goto :goto_1

    .line 143
    :cond_3
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    add-int/lit8 v9, v0, -0x1

    aget v8, v8, v9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, v5, v4

    add-int/2addr v8, v9

    aput v8, v7, v0

    goto :goto_2

    .line 150
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    invoke-virtual {v6, v7, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 153
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    move v3, v4

    .line 155
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_0
.end method
