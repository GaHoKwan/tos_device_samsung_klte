.class public Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64


# instance fields
.field private mApdrNoti:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mPedestrianStatus:I

.field private mUserWantedAccuracy:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    const/4 v2, 0x0

    .line 116
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 117
    return-void
.end method

.method private isFilterInitialized()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method private notifyLocationContext(JJ[D[FZI)V
    .locals 5
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "daLocationHybrid"    # [D
    .param p6, "faLocationExtHybrid"    # [F
    .param p7, "valid"    # Z
    .param p8, "pedestrianStatus"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 590
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3, p4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 591
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 592
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 593
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 594
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 595
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 596
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 597
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 598
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 600
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 601
    return-void
.end method

.method private receiveApdrNoti(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 510
    if-nez p1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string v1, "Alert"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 515
    .local v0, "notiType":I
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 520
    :cond_2
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 522
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 523
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->resume()V

    goto :goto_0
.end method

.method private requestGpsData(JJ)V
    .locals 22
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J

    .prologue
    .line 535
    const/4 v1, 0x3

    new-array v6, v1, [D

    .line 536
    .local v6, "daLocationHybrid":[D
    const/4 v1, 0x3

    new-array v7, v1, [F

    .line 537
    .local v7, "faLocationExtHybrid":[F
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v21, v0

    .line 543
    .local v21, "val":[I
    const/4 v8, 0x1

    .line 544
    .local v8, "locationHybridValid":Z
    const/4 v1, 0x0

    aget v1, v21, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 545
    const/4 v8, 0x1

    .line 550
    :goto_0
    if-eqz v8, :cond_0

    .line 551
    move-object/from16 v0, p0

    iget v9, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyLocationContext(JJ[D[FZI)V

    .line 555
    const/4 v1, 0x0

    aget-wide v14, v6, v1

    const/4 v1, 0x1

    aget-wide v16, v6, v1

    const/4 v1, 0x2

    aget-wide v18, v6, v1

    const/4 v1, 0x2

    aget v20, v7, v1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v20}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->setCurLocationforHubApdr(JJDDDF)V

    .line 565
    :cond_0
    return-void

    .line 547
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendSleepModeCmdToSensorHub()V
    .locals 13

    .prologue
    .line 259
    sget-object v9, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v9}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 262
    .local v2, "apdrRunner":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    if-nez v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 267
    :cond_0
    const-wide v9, 0x4042800000000000L    # 37.0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 268
    const-wide/high16 v9, 0x4060000000000000L    # 128.0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 269
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 270
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 272
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 274
    .local v5, "latBuf":[B
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    .line 276
    .local v6, "longBuf":[B
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 278
    .local v1, "altiBuf":[B
    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 280
    .local v0, "accuracyBuf":[B
    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v8

    .line 283
    .local v8, "userWantedAccuracyBuf":[B
    array-length v9, v5

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v1

    add-int/2addr v9, v10

    array-length v10, v0

    add-int/2addr v9, v10

    array-length v10, v8

    add-int v3, v9, v10

    .line 286
    .local v3, "bufsize":I
    new-array v4, v3, [B

    .line 287
    .local v4, "dataPacket":[B
    const/4 v7, 0x0

    .line 288
    .local v7, "size":I
    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    array-length v9, v5

    add-int/2addr v7, v9

    .line 290
    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    array-length v9, v6

    add-int/2addr v7, v9

    .line 292
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    array-length v9, v1

    add-int/2addr v7, v9

    .line 294
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    array-length v9, v0

    add-int/2addr v7, v9

    .line 296
    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v8, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-virtual {v2, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendSleepModeCmdToSensorHub([B)V

    goto :goto_0
.end method

.method private setCurLocationforHubApdr(JJDDDF)V
    .locals 0
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D
    .param p11, "accuracy"    # F

    .prologue
    .line 622
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 623
    iput-wide p3, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 624
    iput-wide p5, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 625
    iput-wide p7, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 626
    iput-wide p9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 627
    iput p11, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 628
    return-void
.end method

.method private updateApdrData(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    const-string v6, "DeltaTime"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 461
    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-string v6, "DeltaTime"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 467
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 469
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 470
    .local v0, "systemTime":J
    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 481
    .local v2, "timeStamp":J
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    goto :goto_0
.end method

.method private updateRawGpsData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 315
    const-string v4, "SystemTime"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 316
    .local v0, "systemTime":J
    const-string v4, "TimeStamp"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 328
    .local v2, "timeStamp":J
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    .line 341
    return-void
.end method

.method private updateRawSatelliteData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 354
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 365
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->isScreenOn()Z

    move-result v1

    .line 366
    .local v1, "isScreenOn":Z
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getAPStatus()I

    move-result v3

    const/16 v4, -0x2e

    if-ne v3, v4, :cond_2

    move v0, v2

    .line 367
    .local v0, "isApSleep":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    iget-boolean v3, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    if-eqz v3, :cond_1

    .line 369
    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 370
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->vibrateAlarm(Z)V

    .line 371
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyApStatus()V

    .line 372
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->sendSleepModeCmdToSensorHub()V

    .line 374
    :cond_1
    return-void

    .line 366
    .end local v0    # "isApSleep":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRawWpsData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 398
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 197
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 198
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 203
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 204
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 205
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 206
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 207
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 215
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 223
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 179
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 188
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 165
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 170
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SystemTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Heading"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Valid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PedestrianStatus"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 648
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 658
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 756
    if-ne p1, v4, :cond_1

    .line 757
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Wanted Accuracy) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 772
    :cond_0
    :goto_0
    return v4

    .line 761
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 762
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 767
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final terminateAggregator()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected final updateApSleep()V
    .locals 1

    .prologue
    .line 782
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 784
    return-void
.end method

.method protected final updateApWakeup()V
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 795
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateApWakeup()V

    .line 796
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 670
    if-nez p2, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawGpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 676
    :cond_2
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawSatelliteData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 679
    :cond_3
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 680
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawWpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 681
    :cond_4
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 683
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateApdrData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 685
    :cond_5
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->receiveApdrNoti(Landroid/os/Bundle;)V

    goto :goto_0
.end method
