.class final enum Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$4;
.super Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
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
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method public final getObject()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 7

    .prologue
    .line 107
    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3200()I

    move-result v3

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3300()Landroid/content/Context;

    move-result-object v4

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getLooper()Landroid/os/Looper;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3400()Landroid/os/Looper;

    move-result-object v5

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3500()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method public final getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 5

    .prologue
    .line 118
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getVersion()I
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3800()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3900()Landroid/content/Context;

    move-result-object v2

    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getLooper()Landroid/os/Looper;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4000()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-object v0
.end method
