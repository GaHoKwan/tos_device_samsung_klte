.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerBatchRunner.java"


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0x4b0


# instance fields
.field private mBatchingPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 39
    const/16 v0, 0x4b0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mBatchingPeriod:I

    .line 56
    return-void
.end method


# virtual methods
.method protected final getBatchingPeriod()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mBatchingPeriod:I

    return v0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Duration"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 187
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 163
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 175
    return-object p0
.end method

.method protected final parseData([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 114
    move v5, p2

    .line 116
    .local v5, "tmpNext":I
    array-length v9, p1

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_0

    .line 117
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v8

    .line 150
    :goto_0
    return v6

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "names":[Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v7, p1, v5

    .line 124
    .local v7, "totalCnt":I
    if-gtz v7, :cond_1

    .line 125
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_BATCH_DATA_COUNT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    move v6, v8

    .line 126
    goto :goto_0

    .line 128
    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 130
    new-array v1, v7, [I

    .line 131
    .local v1, "activityType":[I
    new-array v0, v7, [I

    .line 132
    .local v0, "accuracy":[I
    new-array v2, v7, [J

    .line 134
    .local v2, "duration":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 135
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x5

    if-gez v9, :cond_2

    .line 136
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    move v6, v8

    .line 137
    goto :goto_0

    .line 140
    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v9, p1, v6

    aput v9, v1, v3

    .line 141
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v9, p1, v5

    aput v9, v0, v3

    .line 142
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v10, p1, v6

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    int-to-long v9, v9

    aput-wide v9, v2, v3

    .line 134
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 147
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 148
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    move v5, v6

    .line 150
    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    goto/16 :goto_0
.end method
