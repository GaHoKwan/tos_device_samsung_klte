.class final enum Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;
.super Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 4

    .prologue
    .line 125
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$800()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 128
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerOtherVerRunner;

    .end local v0    # "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$900()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1000()Landroid/content/Context;

    move-result-object v2

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1100()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerOtherVerRunner;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 135
    .restart local v0    # "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    :goto_0
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v0    # "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->setOptionForLib(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    return-object v1

    .line 131
    .restart local v0    # "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;

    .end local v0    # "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1200()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1300()Landroid/content/Context;

    move-result-object v2

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$1400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .restart local v0    # "runner":Landroid/hardware/contextaware/manager/ContextComponent;
    goto :goto_0
.end method
