.class final enum Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;
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
    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 8

    .prologue
    .line 872
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/manager/BatchContextProvider;

    new-instance v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21400()I

    move-result v4

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21500()Landroid/content/Context;

    move-result-object v5

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21600()Landroid/os/Looper;

    move-result-object v6

    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21700()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-direct {v2, v3}, Landroid/hardware/contextaware/manager/BatchContextProvider;-><init>(Landroid/hardware/contextaware/manager/ContextComponent;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->getSubKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->setOptionForLib(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    # invokes: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$21900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$35;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method protected getSubKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
