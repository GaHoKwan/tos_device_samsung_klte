.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "LifeLogComponentRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0xffff

.field private static final DEFAULT_STOP_PERIOD:I = 0x12c

.field private static final DEFAULT_WAIT_PERIOD:I = 0x5dc


# instance fields
.field private final mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 58
    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    .line 61
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    .line 81
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    .line 83
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;->registerObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V

    .line 84
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->addRequestParser(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V

    .line 85
    return-void
.end method

.method private checkMovingPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 272
    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStayingAreaPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 259
    add-int/lit8 v0, p2, 0x14

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseForMoving([BIJJ)I
    .locals 20
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .prologue
    .line 393
    move/from16 v18, p2

    .line 395
    .local v18, "tmpNext":I
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v18

    add-int/lit8 v3, v3, -0x4

    if-gez v3, :cond_0

    .line 396
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 397
    const/16 v19, -0x1

    .line 441
    :goto_0
    return v19

    .line 400
    :cond_0
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .local v19, "tmpNext":I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-long v8, v3

    .line 405
    .local v8, "timeStamp":J
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v15

    .line 408
    .local v15, "movingTimeStamp":J
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v18

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    .line 409
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 410
    const/16 v19, -0x1

    goto :goto_0

    .line 412
    :cond_1
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v13, p1, v18

    .line 413
    .local v13, "movingCount":I
    if-gtz v13, :cond_2

    move/from16 v18, v19

    .line 414
    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    goto :goto_0

    .line 417
    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    :cond_2
    new-array v12, v13, [I

    .line 418
    .local v12, "movingActivity":[I
    new-array v11, v13, [I

    .line 419
    .local v11, "movingAccuracy":[I
    new-array v14, v13, [I

    .line 421
    .local v14, "movingTimeDuration":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_5

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkMovingPacket([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v13, -0x1

    if-le v10, v3, :cond_4

    .line 423
    :cond_3
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 424
    const/4 v3, -0x1

    move/from16 v18, v19

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    move/from16 v19, v3

    goto :goto_0

    .line 427
    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    :cond_4
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v3, p1, v19

    aput v3, v12, v10

    .line 428
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v18

    aput v3, v11, v10

    .line 429
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v3, p1, v19

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aput v3, v14, v10

    .line 421
    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v18

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    goto :goto_1

    .line 434
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v17

    .line 435
    .local v17, "names":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v13}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v17, v4

    move-wide v0, v15

    invoke-virtual {v3, v4, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v12}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v14}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    move/from16 v18, v19

    .line 441
    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    goto/16 :goto_0
.end method

.method private parseForStayingArea([BIJJ)I
    .locals 21
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .prologue
    .line 313
    move/from16 v19, p2

    .line 315
    .local v19, "tmpNext":I
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v19

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 316
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 317
    const/16 v20, -0x1

    .line 375
    :goto_0
    return v20

    .line 320
    :cond_0
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .local v20, "tmpNext":I
    aget-byte v13, p1, v19

    .line 321
    .local v13, "stayingAreaCount":I
    if-gtz v13, :cond_1

    move/from16 v19, v20

    .line 322
    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    goto :goto_0

    .line 325
    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    :cond_1
    new-array v0, v13, [J

    move-object/from16 v18, v0

    .line 327
    .local v18, "stayingAreaTimeStamp":[J
    new-array v14, v13, [D

    .line 328
    .local v14, "stayingAreaLatitude":[D
    new-array v15, v13, [D

    .line 329
    .local v15, "stayingAreaLongitude":[D
    new-array v12, v13, [D

    .line 330
    .local v12, "stayingAreaAltitude":[D
    new-array v0, v13, [I

    move-object/from16 v17, v0

    .line 331
    .local v17, "stayingAreaTimeDuration":[I
    new-array v0, v13, [I

    move-object/from16 v16, v0

    .line 333
    .local v16, "stayingAreaRadius":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_3

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkStayingAreaPacket([BI)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v13, -0x1

    if-lt v10, v3, :cond_2

    .line 336
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 337
    const/4 v3, -0x1

    move/from16 v19, v20

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    move/from16 v20, v3

    goto :goto_0

    .line 340
    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    :cond_2
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-long v8, v3

    .line 345
    .local v8, "timeStamp":J
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v3

    aput-wide v3, v18, v10

    .line 348
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    aput-wide v3, v14, v10

    .line 351
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    aput-wide v3, v15, v10

    .line 354
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    aput-wide v3, v12, v10

    .line 358
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aput v3, v17, v10

    .line 362
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aput v3, v16, v10

    .line 333
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 366
    .end local v8    # "timeStamp":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, "names":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v13}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v14}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v15}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v12}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v11, v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    move/from16 v19, v20

    .line 375
    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    goto/16 :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 476
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 477
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 478
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 464
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 465
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 466
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 452
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 453
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 454
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "StayingAreaCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "StayingAreaTimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "StayingAreaLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "StayingAreaLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StayingAreaAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StayingAreaTimeDuration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StayingAreaRadius"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MovingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MovingTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MovingActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MovingAccuracy"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MovingTimeDuration"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 117
    const/16 v3, 0x9

    new-array v1, v3, [B

    .line 119
    .local v1, "packet":[B
    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 120
    .local v0, "data":[B
    aget-byte v3, v0, v5

    aput-byte v3, v1, v5

    .line 121
    aget-byte v3, v0, v6

    aput-byte v3, v1, v6

    .line 123
    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 124
    aget-byte v3, v0, v5

    aput-byte v3, v1, v7

    .line 125
    const/4 v3, 0x3

    aget-byte v4, v0, v6

    aput-byte v4, v1, v3

    .line 127
    const v3, 0xffff

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 128
    const/4 v3, 0x4

    aget-byte v4, v0, v5

    aput-byte v4, v1, v3

    .line 129
    const/4 v3, 0x5

    aget-byte v4, v0, v6

    aput-byte v4, v1, v3

    .line 131
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .line 134
    .local v2, "utcTime":[I
    const/4 v3, 0x6

    aget v4, v2, v5

    invoke-static {v4, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 135
    const/4 v3, 0x7

    aget v4, v2, v6

    invoke-static {v4, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 136
    const/16 v3, 0x8

    aget v4, v2, v7

    invoke-static {v4, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 138
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 554
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x1d

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 283
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 295
    return-object p0
.end method

.method public parse([BI)I
    .locals 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 164
    move/from16 v2, p2

    .line 166
    .local v2, "tmpNext":I
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v13, "GMT"

    invoke-direct {v0, v1, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 168
    .local v7, "calender":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 169
    .local v8, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 170
    .local v10, "minute":I
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 171
    .local v11, "second":I
    const/16 v0, 0xe

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 173
    .local v9, "milliSec":I
    mul-int/lit16 v0, v8, 0xe10

    mul-int/lit8 v1, v10, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v9

    int-to-long v3, v0

    .line 174
    .local v3, "curUtcTime":J
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .local v5, "curTimeMillis":J
    move-object v0, p0

    move-object v1, p1

    .line 176
    invoke-direct/range {v0 .. v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForStayingArea([BIJJ)I

    move-result v2

    .line 178
    if-gtz v2, :cond_0

    move v12, v2

    .line 189
    .end local v2    # "tmpNext":I
    .local v12, "tmpNext":I
    :goto_0
    return v12

    .end local v12    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 182
    invoke-direct/range {v0 .. v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForMoving([BIJJ)I

    move-result v2

    .line 183
    if-gtz v2, :cond_1

    move v12, v2

    .line 184
    .end local v2    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0

    .line 187
    .end local v12    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v12, v2

    .line 189
    .end local v2    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 10
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
    const/16 v9, 0x17

    const/16 v8, 0x1d

    const/4 v7, 0x2

    .line 201
    const/4 v0, 0x1

    .line 203
    .local v0, "result":Z
    const/16 v5, 0x1c

    if-ne p1, v5, :cond_0

    .line 204
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 206
    .local v3, "stopPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 207
    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    .line 208
    const/4 v5, 0x1

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 246
    .end local v3    # "stopPeriod":I
    :goto_0
    return v0

    .line 213
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    if-ne p1, v8, :cond_1

    .line 214
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 216
    .local v4, "waitPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 217
    iput v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    .line 218
    invoke-static {v4, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v9, v8, v7, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 223
    goto :goto_0

    .end local v4    # "waitPeriod":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v5, 0x1e

    if-ne p1, v5, :cond_2

    .line 224
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 226
    .local v2, "stayingRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 227
    const/4 v5, 0x3

    invoke-static {v2, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 232
    goto :goto_0

    .end local v2    # "stayingRadius":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v5, 0x1f

    if-ne p1, v5, :cond_3

    .line 233
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 235
    .local v1, "stayingAreaRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingAreaRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 237
    const/4 v5, 0x4

    invoke-static {v1, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 242
    goto/16 :goto_0

    .line 243
    .end local v1    # "stayingAreaRadius":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final updatePosition(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 17
    .param p1, "position"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .prologue
    .line 491
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 542
    :goto_0
    return-void

    .line 495
    :cond_0
    if-nez p1, :cond_1

    .line 496
    sget-object v13, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CURRENT_POSITION_NULL_EXCEPTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    move-object/from16 v7, p1

    .line 504
    .local v7, "pos":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLatitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v13, v15

    double-to-int v5, v13

    .line 505
    .local v5, "latitude":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLongitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v13, v15

    double-to-int v6, v13

    .line 506
    .local v6, "longitude":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAltitude()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v15

    double-to-int v2, v13

    .line 507
    .local v2, "altitude":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAccuracy()F

    move-result v13

    float-to-int v1, v13

    .line 508
    .local v1, "accuracy":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getUtcTime()[I

    move-result-object v12

    .line 509
    .local v12, "utcTime":[I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSatelliteCount()I

    move-result v8

    .line 510
    .local v8, "satelliteCount":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSpeed()F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v10, v13

    .line 511
    .local v10, "speed":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getDistance()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v15

    double-to-int v4, v13

    .line 512
    .local v4, "distance":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getType()I

    move-result v11

    .line 514
    .local v11, "type":I
    const/16 v13, 0x16

    new-array v3, v13, [B

    .line 515
    .local v3, "dataPacket":[B
    const/4 v9, 0x0

    .line 517
    .local v9, "size":I
    const/4 v13, 0x4

    invoke-static {v5, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    const/4 v13, 0x4

    invoke-static {v6, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x4

    const/4 v15, 0x4

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    const/4 v13, 0x4

    invoke-static {v2, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x4

    const/4 v15, 0x4

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    const/4 v13, 0x1

    invoke-static {v1, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x4

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    const/4 v13, 0x0

    aget v13, v12, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    const/4 v13, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    const/4 v13, 0x2

    aget v13, v12, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    const/4 v13, 0x1

    invoke-static {v8, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    const/4 v13, 0x2

    invoke-static {v10, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x2

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    const/4 v13, 0x2

    invoke-static {v4, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x2

    const/4 v15, 0x2

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    const/4 v13, 0x1

    invoke-static {v11, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x2

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    const/16 v13, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendCommonValueToSensorHub(B[B)Z

    goto/16 :goto_0
.end method
