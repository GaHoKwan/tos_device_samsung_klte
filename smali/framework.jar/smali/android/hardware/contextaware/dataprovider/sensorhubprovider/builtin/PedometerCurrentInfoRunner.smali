.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerProviderForExtLib;
.source "PedometerCurrentInfoRunner.java"


# static fields
.field private static final DEFAULT_COLLECTION_TIME:I


# instance fields
.field private mCollectionTime:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerProviderForExtLib;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->mCollectionTime:I

    .line 60
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 229
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 230
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerProviderForExtLib;->clear()V

    .line 231
    return-void
.end method

.method protected doTimeOutChecking(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->setContextCollectionResultNotifyCompletion(Z)V

    .line 163
    if-nez p2, :cond_0

    .line 164
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 206
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerProviderForExtLib;->enable()V

    .line 207
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_PEDOMETER_CURRENT_INFO:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 82
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 83
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->mCollectionTime:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 85
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 243
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerProviderForExtLib;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 182
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 194
    return-object p0
.end method

.method protected final getTimeOutCheckObserver()Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 0

    .prologue
    .line 218
    return-object p0
.end method

.method protected final parse(I[B)I
    .locals 4
    .param p1, "next"    # I
    .param p2, "packet"    # [B

    .prologue
    const/4 v2, -0x1

    .line 96
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getLibParser()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v0

    .line 98
    .local v0, "libParser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    if-nez v0, :cond_0

    .line 99
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 114
    :goto_0
    return v2

    .line 105
    :cond_0
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    .line 107
    .local v1, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-nez v1, :cond_1

    .line 108
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {v1, p2, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 127
    .local v0, "result":Z
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 128
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->mCollectionTime:I

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;->mCollectionTime:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 135
    :goto_0
    return v0

    .line 133
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
