.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


# instance fields
.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 538
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 539
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 541
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 542
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 543
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 544
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 545
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 546
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 547
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 548
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 550
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 551
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 552
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 686
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 687
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 688
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 673
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 674
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 675
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WalkStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WalkStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RunStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RunStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UpDownStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UpDownStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TotalStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DistanceDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "StepStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CalorieDiff"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Calorie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "WalkingFrequency"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WalkUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WalkUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WalkDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "WalkDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RunUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RunUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RunDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RunDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LoggingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CalorieDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "WalkStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "RunStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WalkUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "WalkDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "RunUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RunDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TotalStepCountDiffArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    .prologue
    .line 118
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 119
    .local v0, "packet":[B
    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    const/4 v1, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    const/4 v1, 0x2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 714
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 563
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, "contextBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 567
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 568
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 569
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 570
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 571
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 572
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 573
    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 574
    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 575
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 576
    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 577
    const/16 v2, 0xb

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 580
    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 581
    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 582
    const/16 v2, 0xf

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 583
    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 584
    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 585
    const/16 v2, 0x12

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 586
    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 587
    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 588
    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 589
    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 591
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 649
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 661
    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 700
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    .line 702
    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 61
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 159
    move/from16 v39, p2

    .line 161
    .local v39, "tmpNext":I
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v39

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 162
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 163
    const/4 v3, -0x1

    .line 527
    :goto_0
    return v3

    .line 166
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, "names":[Ljava/lang/String;
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .local v40, "tmpNext":I
    aget-byte v14, p1, v39

    .line 169
    .local v14, "data":I
    and-int/lit16 v3, v14, 0x80

    if-nez v3, :cond_2

    .line 170
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0xe

    if-gez v3, :cond_1

    .line 171
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 172
    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    goto :goto_0

    .line 175
    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :cond_1
    and-int/lit8 v14, v14, 0x7f

    .line 176
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x0

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 178
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 179
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 182
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v14, p1, v40

    .line 183
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x2

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 185
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 186
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x3

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 189
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v14, p1, v39

    .line 190
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x4

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 192
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 193
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x5

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 196
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 198
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x6

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 200
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 201
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x7

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 204
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 206
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x8

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 209
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4059000000000000L    # 100.0

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 210
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x9

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 212
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4024000000000000L    # 10.0

    div-double v34, v55, v57

    .line 214
    .local v34, "speed":D
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xa

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 216
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v14, p1, v39

    .line 217
    move/from16 v37, v14

    .line 218
    .local v37, "stepStatus":I
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xb

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 220
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xc

    aget-object v55, v23, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v56, p1, v40

    invoke-static/range {v56 .. v56}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v56

    move/from16 v0, v56

    int-to-double v0, v0

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 226
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4059000000000000L    # 100.0

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 227
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xd

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 229
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v14, p1, v39

    .line 230
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xe

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 233
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v14, p1, v40

    .line 234
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xf

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 236
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 237
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x10

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 240
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v14, p1, v39

    .line 241
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x11

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 243
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 244
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x12

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 247
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v14, p1, v40

    .line 248
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x13

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 250
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 251
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x14

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 254
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v14, p1, v39

    .line 255
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x15

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 257
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 258
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x16

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v39, v40

    .line 525
    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    :goto_1
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v3, v39

    .line 527
    goto/16 :goto_0

    .line 261
    .end local v34    # "speed":D
    .end local v37    # "stepStatus":I
    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :cond_2
    and-int/lit16 v3, v14, 0xc0

    shr-int/lit8 v3, v3, 0x6

    const/16 v55, 0x3

    move/from16 v0, v55

    if-ne v3, v0, :cond_7

    .line 262
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_3

    .line 263
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 264
    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    goto/16 :goto_0

    .line 267
    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :cond_3
    new-instance v3, Ljava/util/SimpleTimeZone;

    const/16 v55, 0x0

    const-string v56, "GMT"

    move/from16 v0, v55

    move-object/from16 v1, v56

    invoke-direct {v3, v0, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v10

    .line 269
    .local v10, "calender":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 270
    .local v18, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 271
    .local v22, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v33

    .line 272
    .local v33, "second":I
    const/16 v3, 0xe

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 274
    .local v21, "milliSec":I
    move/from16 v0, v18

    mul-int/lit16 v3, v0, 0xe10

    mul-int/lit8 v55, v22, 0x3c

    add-int v3, v3, v55

    add-int v3, v3, v33

    mul-int/lit16 v3, v3, 0x3e8

    add-int v3, v3, v21

    int-to-long v4, v3

    .line 275
    .local v4, "curUtcTime":J
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 277
    .local v6, "curTimeMillis":J
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v20, p1, v40

    .line 278
    .local v20, "loggingCount":I
    if-gtz v20, :cond_4

    .line 279
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 281
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 284
    :cond_4
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x17

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 286
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v38, v0

    .line 287
    .local v38, "timeStampArray":[J
    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 288
    .local v17, "distanceDiffArray":[D
    move/from16 v0, v20

    new-array v13, v0, [D

    .line 289
    .local v13, "calorieDiffArray":[D
    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v36, v0

    .line 290
    .local v36, "speedArray":[D
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v51, v0

    .line 291
    .local v51, "walkStepCountDiffArray":[J
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 292
    .local v29, "runStepCountDiffArray":[J
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v54, v0

    .line 293
    .local v54, "walkUpStepCountDiffArray":[J
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v48, v0

    .line 294
    .local v48, "walkDownStepCountDiffArray":[J
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v32, v0

    .line 295
    .local v32, "runUpStepCountDiffArray":[J
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v26, v0

    .line 296
    .local v26, "runDownStepCountDiffArray":[J
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v43, v0

    .line 298
    .local v43, "totalStepCountDiffArray":[J
    const-wide/16 v15, 0x0

    .line 299
    .local v15, "distanceDiff":D
    const-wide/16 v11, 0x0

    .line 300
    .local v11, "calorieDiff":D
    const-wide/16 v34, 0x0

    .line 301
    .restart local v34    # "speed":D
    const-wide/16 v41, 0x0

    .line 302
    .local v41, "totalStepCountDiff":J
    const-wide/16 v49, 0x0

    .line 303
    .local v49, "walkStepCountDiff":J
    const-wide/16 v27, 0x0

    .line 304
    .local v27, "runStepCountDiff":J
    const-wide/16 v52, 0x0

    .line 305
    .local v52, "walkUpStepCountDiff":J
    const-wide/16 v46, 0x0

    .line 306
    .local v46, "walkDownStepCountDiff":J
    const-wide/16 v30, 0x0

    .line 307
    .local v30, "runUpStepCountDiff":J
    const-wide/16 v24, 0x0

    .line 309
    .local v24, "runDownStepCountDiff":J
    const/16 v37, -0x1

    .line 311
    .restart local v37    # "stepStatus":I
    const/16 v19, 0x0

    .local v19, "i":I
    move/from16 v40, v39

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 312
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0x14

    if-gez v3, :cond_5

    .line 313
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 315
    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    goto/16 :goto_0

    .line 318
    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :cond_5
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x10

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v8, v3

    .line 322
    .local v8, "tmpTimeStamp":J
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v55

    aput-wide v55, v38, v19

    .line 326
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 328
    int-to-double v0, v14

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4059000000000000L    # 100.0

    div-double v55, v55, v57

    aput-wide v55, v17, v19

    .line 330
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 332
    int-to-double v0, v14

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4059000000000000L    # 100.0

    div-double v55, v55, v57

    aput-wide v55, v13, v19

    .line 334
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v51, v19

    .line 336
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v29, v19

    .line 337
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v54, v19

    .line 339
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v48, v19

    .line 341
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v32, v19

    .line 342
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v26, v19

    .line 344
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4024000000000000L    # 10.0

    div-double v55, v55, v57

    aput-wide v55, v36, v19

    .line 347
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v43, v19

    .line 349
    aget-wide v55, v17, v19

    add-double v15, v15, v55

    .line 350
    aget-wide v55, v13, v19

    add-double v11, v11, v55

    .line 351
    aget-wide v55, v36, v19

    add-double v34, v34, v55

    .line 353
    aget-wide v55, v43, v19

    add-long v41, v41, v55

    .line 354
    aget-wide v55, v51, v19

    add-long v49, v49, v55

    .line 355
    aget-wide v55, v29, v19

    add-long v27, v27, v55

    .line 356
    aget-wide v55, v54, v19

    add-long v52, v52, v55

    .line 357
    aget-wide v55, v48, v19

    add-long v46, v46, v55

    .line 358
    aget-wide v55, v32, v19

    add-long v30, v30, v55

    .line 359
    aget-wide v55, v26, v19

    add-long v24, v24, v55

    .line 311
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 362
    .end local v8    # "tmpTimeStamp":J
    :cond_6
    add-long v55, v52, v46

    add-long v55, v55, v30

    add-long v44, v55, v24

    .line 366
    .local v44, "upDownStepCountDiff":J
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v55, v0

    div-double v34, v34, v55

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x0

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v49

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 369
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v49

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x2

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 372
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v27

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x3

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x4

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v44

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 375
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v44

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x5

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x6

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v41

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v41

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x7

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x8

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide v1, v15

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 381
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v55, v0

    add-double v55, v55, v15

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x9

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xa

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xb

    aget-object v55, v23, v55

    const/16 v56, -0x1

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xc

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    invoke-virtual {v3, v0, v11, v12}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 386
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v55, v0

    add-double v55, v55, v11

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xd

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xe

    aget-object v55, v23, v55

    const-wide/16 v56, 0x0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xf

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v52

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 390
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v52

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x10

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x11

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v46

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 393
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v46

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x12

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x13

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v30

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 397
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v30

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x14

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x15

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v24

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 400
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v24

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x16

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x17

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x18

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x19

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1a

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    invoke-virtual {v3, v0, v13}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1b

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1c

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1d

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1e

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1f

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x20

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x21

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x22

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v43

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    move/from16 v39, v40

    .line 417
    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    goto/16 :goto_1

    .line 418
    .end local v4    # "curUtcTime":J
    .end local v6    # "curTimeMillis":J
    .end local v10    # "calender":Ljava/util/Calendar;
    .end local v11    # "calorieDiff":D
    .end local v13    # "calorieDiffArray":[D
    .end local v15    # "distanceDiff":D
    .end local v17    # "distanceDiffArray":[D
    .end local v18    # "hour":I
    .end local v19    # "i":I
    .end local v20    # "loggingCount":I
    .end local v21    # "milliSec":I
    .end local v22    # "minute":I
    .end local v24    # "runDownStepCountDiff":J
    .end local v26    # "runDownStepCountDiffArray":[J
    .end local v27    # "runStepCountDiff":J
    .end local v29    # "runStepCountDiffArray":[J
    .end local v30    # "runUpStepCountDiff":J
    .end local v32    # "runUpStepCountDiffArray":[J
    .end local v33    # "second":I
    .end local v34    # "speed":D
    .end local v36    # "speedArray":[D
    .end local v37    # "stepStatus":I
    .end local v38    # "timeStampArray":[J
    .end local v39    # "tmpNext":I
    .end local v41    # "totalStepCountDiff":J
    .end local v43    # "totalStepCountDiffArray":[J
    .end local v44    # "upDownStepCountDiff":J
    .end local v46    # "walkDownStepCountDiff":J
    .end local v48    # "walkDownStepCountDiffArray":[J
    .end local v49    # "walkStepCountDiff":J
    .end local v51    # "walkStepCountDiffArray":[J
    .end local v52    # "walkUpStepCountDiff":J
    .end local v54    # "walkUpStepCountDiffArray":[J
    .restart local v40    # "tmpNext":I
    :cond_7
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0x20

    if-gez v3, :cond_8

    .line 419
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 420
    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    goto/16 :goto_0

    .line 423
    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    :cond_8
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 426
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x0

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 428
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 429
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 432
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 435
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x2

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 437
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 438
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x3

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 441
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 444
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x4

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 446
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 447
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x5

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 450
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 453
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x6

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 455
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 456
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x7

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 459
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 462
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x8

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059000000000000L    # 100.0

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 465
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4059000000000000L    # 100.0

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 466
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x9

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 468
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4024000000000000L    # 10.0

    div-double v34, v55, v57

    .line 470
    .restart local v34    # "speed":D
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xa

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 472
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v14, p1, v40

    .line 473
    move/from16 v37, v14

    .line 474
    .restart local v37    # "stepStatus":I
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xb

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 476
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 478
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xc

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 481
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4024000000000000L    # 10.0

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 482
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xd

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 484
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v14, p1, v39

    .line 485
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xe

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024000000000000L    # 10.0

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 488
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 491
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xf

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 493
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 494
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x10

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 497
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 500
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x11

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 502
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 503
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x12

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 506
    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 509
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x13

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 511
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 512
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x14

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 515
    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "tmpNext":I
    .restart local v40    # "tmpNext":I
    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    .line 518
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x15

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 520
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 521
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x16

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v39, v40

    .end local v40    # "tmpNext":I
    .restart local v39    # "tmpNext":I
    goto/16 :goto_1
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 603
    const/4 v2, 0x1

    .line 604
    .local v2, "result":Z
    new-array v1, v5, [B

    .line 606
    .local v1, "dataPacket":[B
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    .line 607
    const-string v3, "Height"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 610
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 611
    const/16 v3, 0x12

    invoke-virtual {p0, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    .line 638
    :goto_0
    return v2

    .line 613
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 614
    const-string v3, "Weight"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 617
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 618
    const/16 v3, 0x13

    invoke-virtual {p0, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    goto :goto_0

    .line 620
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    .line 621
    const-string v3, "Gender"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 622
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserGender(I)V

    .line 624
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 625
    const/16 v3, 0x14

    invoke-virtual {p0, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    goto :goto_0

    .line 627
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 628
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 630
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivery Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 631
    const/16 v3, 0x15

    invoke-static {v0, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    .line 634
    goto/16 :goto_0

    .line 635
    .end local v0    # "count":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
