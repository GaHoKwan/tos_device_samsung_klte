.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "TemperatureAlertRunner.java"


# static fields
.field private static final DEFAULT_HIGH_TEMPERATURE:I = 0x7f

.field private static final DEFAULT_IS_INCLUDING:Z = true

.field private static final DEFAULT_LOW_TEMPERATURE:I = 0x46


# instance fields
.field private mHighTemperature:I

.field private mIsIncluding:Z

.field private mLowTemperature:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 43
    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mLowTemperature:I

    .line 46
    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mHighTemperature:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mIsIncluding:Z

    .line 64
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 196
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 197
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 184
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 185
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 186
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 171
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 172
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 173
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEMPERATURE_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 97
    .local v0, "packet":[B
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mLowTemperature:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 98
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mHighTemperature:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 99
    iget-boolean v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mIsIncluding:Z

    if-eqz v1, :cond_0

    .line 100
    aput-byte v3, v0, v4

    .line 105
    :goto_0
    return-object v0

    .line 102
    :cond_0
    aput-byte v2, v0, v4

    goto :goto_0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 209
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x18

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 147
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 159
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 118
    .local v0, "result":Z
    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    .line 119
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mLowTemperature:I

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Low Temperature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mLowTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 136
    :goto_0
    return v0

    .line 123
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v2, 0x15

    if-ne p1, v2, :cond_1

    .line 124
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mHighTemperature:I

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "High Temperature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mHighTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v2, 0x16

    if-ne p1, v2, :cond_2

    .line 129
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    move-object v1, v2

    check-cast v1, [Z

    .line 131
    .local v1, "tempVal":[Z
    const/4 v2, 0x0

    aget-boolean v2, v1, v2

    iput-boolean v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mIsIncluding:Z

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Including= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/TemperatureAlertRunner;->mIsIncluding:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v1    # "tempVal":[Z
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
