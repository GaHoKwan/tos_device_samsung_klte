.class public abstract Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "EnvironmentSensorAggregator.java"


# instance fields
.field private mLoggingStatus:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    invoke-direct/range {p0 .. p5}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 57
    return-void
.end method


# virtual methods
.method protected abstract checkCompensationData([D)Z
.end method

.method protected abstract compensateForRawData([[D)[D
.end method

.method protected final getLoggingStatus()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    return v0
.end method

.method protected final getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;
    .param p2, "valueName"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method protected getRawSensorValueNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCompensationData([D)V
    .locals 3
    .param p1, "compensationData"    # [D

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 135
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    .line 136
    return-void
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
    .line 171
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 172
    .local v2, "result":Z
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 173
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 175
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 178
    instance-of v3, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v2

    .line 184
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return v2
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 68
    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 73
    const-string v8, "getRawSensorValueNames() is null"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v8

    array-length v1, v8

    .line 77
    .local v1, "bufSize":I
    if-gtz v1, :cond_3

    .line 78
    const-string v8, "length of getRawSensorValueNames() is zero"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v8, "LoggingStatus"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 84
    new-array v7, v1, [[D

    .line 85
    .local v7, "rawData":[[D
    const/4 v6, 0x0

    .line 87
    .local v6, "num":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v3, v0, v4

    .line 88
    .local v3, "i":Ljava/lang/String;
    invoke-virtual {p0, p2, v3}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D

    move-result-object v8

    aput-object v8, v7, v6

    .line 89
    aget-object v8, v7, v6

    if-eqz v8, :cond_4

    aget-object v8, v7, v6

    array-length v8, v8

    if-gtz v8, :cond_5

    .line 90
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rawData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "].length is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    .end local v3    # "i":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->compensateForRawData([[D)[D

    move-result-object v2

    .line 98
    .local v2, "compensationData":[D
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->checkCompensationData([D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    invoke-virtual {p0, v2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->notifyCompensationData([D)V

    goto :goto_0
.end method
