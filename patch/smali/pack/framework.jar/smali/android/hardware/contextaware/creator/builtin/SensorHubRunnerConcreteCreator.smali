.class public Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;
.super Landroid/hardware/contextaware/creator/ContextProviderCreator;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$1;,
        Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p4, "version"    # I

    .prologue
    .line 1380
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/creator/ContextProviderCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 1381
    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$10300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$10900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$11500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$12000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$12100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$12700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$13300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$13900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$14500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$15100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$15700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$16300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$16900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$17500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$18000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$18100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$18700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18800()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18900()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19300()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$19400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19500()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$20100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20200()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20300()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20700()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$20800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20900()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$21500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21600()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21700()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22100()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$22200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22300()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$22900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$23500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$24000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$24100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$24700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$25300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$25900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$26500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$27100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27700(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->removeObj(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$27800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$5500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$6100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$6700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$7300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$7900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$8000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$8500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$9000()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$9100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600()I
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$9700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1392
    invoke-static {p1}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    move-result-object v0

    return-object v0
.end method
