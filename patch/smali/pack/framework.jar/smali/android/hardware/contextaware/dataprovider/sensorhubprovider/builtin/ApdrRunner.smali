.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ApdrRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_UP_STEP_COUNT:I = 0x1f4

.field private static final DEFAULT_WAKE_UP_TIME_COUNT:I = 0xb4

.field private static final STEP_COUNT_HIGH:I = 0x32

.field private static final STEP_COUNT_LOW:I = 0x1f4

.field private static final STEP_COUNT_MEDIUM:I = 0x12c

.field private static final TIME_COUNT_HIGH:I = 0x3c

.field private static final TIME_COUNT_LOW:I = 0xb4

.field private static final TIME_COUNT_MEDIUM:I = 0x78

.field private static final TIME_SYNC_TIMER:I = 0x1c20


# instance fields
.field private mLppResolution:I

.field private mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSyncTime:Landroid/text/format/Time;

.field private mSyncTimeTask:Ljava/lang/Runnable;

.field private mWakeUpStepCount:I

.field private mWakeUpTimeCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v1, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 102
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    .line 105
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 108
    const/16 v0, 0xb4

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    .line 114
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCurTimeToSensorHub()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendCurTimeToSensorHub()V
    .locals 4

    .prologue
    .line 624
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 625
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 626
    const-string v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 629
    const/4 v2, 0x3

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 630
    .local v0, "data":[B
    const/4 v2, 0x0

    iget v3, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 631
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 632
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 636
    return-void

    .line 629
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 433
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 434
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 435
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 422
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 423
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 424
    return-void
.end method

.method public final enable()V
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 388
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 395
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$1;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTimeTask:Ljava/lang/Runnable;

    .line 411
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Hour"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Minute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Second"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "doe"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TimeDifference"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IncrementEast"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IncrementNorth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "StayingArea"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .prologue
    .line 166
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 167
    .local v0, "packet":[B
    const/4 v1, 0x0

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 447
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x1c

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 363
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 375
    return-object p0
.end method

.method public final getSyncTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mSyncTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public gpsAvailable()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 608
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 610
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 613
    return-void
.end method

.method public final gpsBatchStarted()V
    .locals 4

    .prologue
    .line 583
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 585
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 589
    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 4

    .prologue
    .line 600
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 602
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 605
    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 592
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 594
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 597
    return-void
.end method

.method public gpsUnavailable()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 616
    const/4 v1, 0x1

    new-array v0, v1, [B

    aput-byte v2, v0, v2

    .line 618
    .local v0, "data":[B
    const/16 v1, 0x17

    const/16 v2, 0x1c

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 621
    return-void
.end method

.method public final locationUpdate(Landroid/location/Location;)V
    .locals 17
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v13, v15

    double-to-int v6, v13

    .line 492
    .local v6, "lat":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v13, v15

    double-to-int v7, v13

    .line 493
    .local v7, "lon":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v15

    double-to-int v2, v13

    .line 494
    .local v2, "alt":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    float-to-int v13, v13

    int-to-byte v1, v13

    .line 496
    .local v1, "acc":B
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 497
    .local v11, "t":Landroid/text/format/Time;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 498
    const-string v13, "GMT+00:00"

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 501
    .local v3, "bun":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 502
    .local v9, "sat":B
    if-eqz v3, :cond_0

    .line 503
    const-string v13, "satellites"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-byte v9, v13

    .line 504
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "satellites:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v10, v13

    .line 510
    .local v10, "speed":I
    const/4 v5, 0x0

    .line 512
    .local v5, "dist":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "prov":Ljava/lang/String;
    const/4 v12, 0x0

    .line 514
    .local v12, "type":B
    if-eqz v8, :cond_1

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "gps"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 516
    const/4 v12, 0x1

    .line 529
    :cond_1
    :goto_0
    const/16 v13, 0x16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 531
    .local v4, "data":Ljava/nio/ByteBuffer;
    const/4 v13, 0x4

    invoke-static {v6, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 532
    const/4 v13, 0x4

    invoke-static {v7, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 533
    const/4 v13, 0x4

    invoke-static {v2, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 534
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 535
    iget v13, v11, Landroid/text/format/Time;->hour:I

    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 536
    iget v13, v11, Landroid/text/format/Time;->minute:I

    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 537
    iget v13, v11, Landroid/text/format/Time;->second:I

    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 538
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 539
    const/4 v13, 0x2

    invoke-static {v10, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 540
    const/4 v13, 0x2

    invoke-static {v5, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 541
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 542
    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loc time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->hour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " min:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->minute:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sec:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->second:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v13, "LPPApdrR"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->hour:I

    int-to-byte v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " min:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->minute:I

    int-to-byte v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sec:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/text/format/Time;->second:I

    int-to-byte v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v13, 0x16

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendCommonValueToSensorHub(B[B)Z

    .line 548
    return-void

    .line 517
    .end local v4    # "data":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "network"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 519
    const/4 v12, 0x2

    goto/16 :goto_0

    .line 520
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "fused"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 522
    const/4 v12, 0x3

    goto/16 :goto_0

    .line 523
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GPS batch"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 525
    const/4 v12, 0x4

    goto/16 :goto_0
.end method

.method public final parse([BI)I
    .locals 18
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 231
    move/from16 v12, p2

    .line 232
    .local v12, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "names":[Ljava/lang/String;
    const-string v14, "LppApdr"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parse:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    if-gez v14, :cond_0

    .line 236
    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 237
    const/4 v13, -0x1

    .line 327
    :goto_0
    return v13

    .line 240
    :cond_0
    aget-byte v14, p1, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 242
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    add-int/lit8 v12, v12, 0x1

    aget-byte v16, p1, v12

    invoke-virtual/range {v14 .. v16}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 245
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 246
    add-int/lit8 v12, v12, 0x1

    move v13, v12

    goto :goto_0

    .line 249
    :cond_1
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .local v13, "tmpNext":I
    aget-byte v14, p1, v12

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 251
    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 253
    const/4 v12, -0x1

    move/from16 v17, v13

    .end local v13    # "tmpNext":I
    .local v17, "tmpNext":I
    move v13, v12

    move/from16 v12, v17

    .end local v17    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0

    .line 269
    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    :cond_2
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v2, p1, v13

    .line 270
    .local v2, "dataSize":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dataSize:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 272
    if-gtz v2, :cond_3

    .line 273
    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 275
    const/4 v13, -0x1

    goto :goto_0

    .line 279
    :cond_3
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int/2addr v14, v12

    mul-int/lit8 v15, v2, 0x5

    add-int/lit8 v15, v15, 0x4

    if-ge v14, v15, :cond_4

    .line 280
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packet len:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " tmpNext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 282
    sget-object v14, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 283
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 286
    :cond_4
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v4, p1, v12

    .line 287
    .local v4, "hour":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v8, p1, v13

    .line 288
    .local v8, "minute":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v10, p1, v12

    .line 289
    .local v10, "second":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v3, p1, v13

    .line 291
    .local v3, "doe":I
    new-array v11, v2, [J

    .line 292
    .local v11, "timeDiff":[J
    new-array v6, v2, [I

    .line 293
    .local v6, "incEast":[I
    new-array v7, v2, [I

    .line 294
    .local v7, "incNorth":[I
    new-array v1, v2, [I

    .line 296
    .local v1, "activityType":[I
    const/4 v5, 0x0

    .local v5, "i":I
    move v13, v12

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 297
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packet length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  tmpNext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 300
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x64

    int-to-long v14, v14

    aput-wide v14, v11, v5

    .line 301
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v14, p1, v13

    mul-int/lit8 v14, v14, 0xa

    aput v14, v6, v5

    .line 302
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v14, p1, v12

    mul-int/lit8 v14, v14, 0xa

    aput v14, v7, v5

    .line 303
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v14, p1, v13

    aput v14, v1, v5

    .line 296
    add-int/lit8 v5, v5, 0x1

    move v13, v12

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    goto :goto_1

    .line 306
    :cond_5
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 308
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 310
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 312
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 314
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 316
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 318
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 320
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 322
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    sget-object v15, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->val:I
    invoke-static {v15}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 325
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v12, v13

    .line 327
    .end local v13    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto/16 :goto_0
.end method

.method public final sendSleepModeCmdToSensorHub([B)V
    .locals 5
    .param p1, "packet"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    if-ltz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    .line 216
    .local v0, "dataPacket":[B
    new-array v1, v3, [B

    aput-byte v3, v1, v4

    .line 217
    .local v1, "mode":[B
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/16 v2, -0x4f

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v3

    invoke-super {p0, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method public final setLppResolution(I)V
    .locals 5
    .param p1, "res"    # I

    .prologue
    const/16 v4, 0x1c

    const/16 v3, 0x17

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 459
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    .line 460
    if-nez p1, :cond_1

    .line 461
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 462
    const/16 v0, 0xb4

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    .line 472
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v1, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 477
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    invoke-virtual {p0, v3, v4, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 481
    return-void

    .line 463
    :cond_1
    if-ne p1, v1, :cond_2

    .line 464
    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 465
    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0

    .line 466
    :cond_2
    if-ne p1, v2, :cond_0

    .line 467
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpStepCount:I

    .line 468
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mWakeUpTimeCount:I

    goto :goto_0
.end method

.method public final setMagneticSensorOffset(III)V
    .locals 8
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "offsetZ"    # I

    .prologue
    const/4 v4, 0x2

    .line 563
    invoke-static {p1, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 564
    .local v1, "data1":[B
    invoke-static {p2, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 565
    .local v2, "data2":[B
    invoke-static {p3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 566
    .local v3, "data3":[B
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 567
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 572
    const/16 v4, 0x17

    const/16 v5, 0x1c

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 576
    return-void
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
    .line 191
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    .line 192
    .local v1, "result":Z
    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    .line 193
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .local v0, "resolution":I
    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->mLppResolution:I

    .line 197
    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    .line 201
    .end local v0    # "resolution":I
    :goto_0
    return v1

    .line 199
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
