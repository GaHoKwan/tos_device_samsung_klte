.class public Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LppAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LPP_RESOLUTION:I = 0x0

.field private static final NEXT_APDR:I = 0xabaa

.field private static final TAG:Ljava/lang/String; = "LppAggregator"


# instance fields
.field private final LPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

.field private altitude:[D

.field count:I

.field private final gpsKeepOnTimer:I

.field private final gpsRequestApdr:I

.field private final gpsRequestBy:J

.field private final gpsRequestTimer:I

.field private latitude:[D

.field private longitude:[D

.field private mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

.field private final mContext:Landroid/content/Context;

.field private mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

.field private mLppResolution:I

.field mStatus:[I

.field sendApdr:Landroid/os/Handler;

.field private final strConfigEdit:Ljava/lang/String;

.field private final strConfigText:Ljava/lang/String;

.field private timestamp:[J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
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
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 94
    invoke-direct/range {p0 .. p5}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 55
    iput-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .line 56
    const/16 v2, 0x14

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->gpsRequestTimer:I

    .line 57
    const/16 v2, 0xf

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->gpsKeepOnTimer:I

    .line 58
    const/16 v2, 0x64

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->gpsRequestApdr:I

    .line 59
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->gpsRequestBy:J

    .line 60
    const-string v2, "[Note] \n"

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->strConfigEdit:Ljava/lang/String;

    .line 61
    const-string v2, ""

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->strConfigText:Ljava/lang/String;

    .line 63
    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    invoke-direct {v2, p0, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;)V

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    .line 66
    iput v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLppResolution:I

    .line 72
    iput-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 393
    const/16 v2, 0x24

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    .line 407
    iput v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->count:I

    .line 96
    iput-object p2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 101
    .local v0, "i":Landroid/hardware/contextaware/manager/ContextComponent;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .end local v0    # "i":Landroid/hardware/contextaware/manager/ContextComponent;
    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 107
    :cond_1
    return-void

    .line 393
    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;
    .param p1, "x1"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    return-object p1
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->notifyPositionContext(Ljava/util/ArrayList;)V

    return-void
.end method

.method private convertToUtc(III)J
    .locals 25
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getSyncTime()Landroid/text/format/Time;

    move-result-object v16

    .line 475
    .local v16, "syncT":Landroid/text/format/Time;
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "syncT:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v19, "HH:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 477
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 480
    .local v17, "time1":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 481
    .local v18, "time2":Ljava/lang/String;
    const/4 v15, 0x0

    .line 482
    .local v15, "syncDate":Ljava/util/Date;
    const/4 v13, 0x0

    .line 484
    .local v13, "rxDate":Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 485
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 486
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "syncDate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "rxDate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v15, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 490
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 491
    .local v2, "cal2":Ljava/util/Calendar;
    invoke-virtual {v2, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 492
    const/16 v19, 0x5

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 493
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 501
    .end local v2    # "cal2":Ljava/util/Calendar;
    :cond_0
    :goto_0
    const-wide/16 v11, 0x0

    .line 502
    .local v11, "lapse":J
    if-eqz v13, :cond_1

    .line 504
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    sub-long v11, v19, v21

    .line 506
    :cond_1
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lapse:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-gez v19, :cond_2

    .line 509
    const-string v19, "LppAggregator"

    const-string v20, "lapse is -ve"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    const-wide/32 v19, 0x2932e00

    cmp-long v19, v11, v19

    if-lez v19, :cond_3

    .line 513
    const-string v19, "LppAggregator"

    const-string v20, "lapse is more than 12 hours"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_3
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    .line 516
    .local v5, "lapHr":J
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v20, 0x3c

    mul-long v20, v20, v5

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    sub-long v20, v11, v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    .line 518
    .local v7, "lapMin":J
    const-wide/16 v19, 0x3c

    mul-long v19, v19, v5

    const-wide/16 v21, 0x3c

    mul-long v19, v19, v21

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    const-wide/16 v21, 0x3c

    mul-long v21, v21, v7

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    add-long v19, v19, v21

    sub-long v19, v11, v19

    const-wide/16 v21, 0x3e8

    div-long v9, v19, v21

    .line 522
    .local v9, "lapSec":J
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lapHr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lapMin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lapSec:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 526
    .local v14, "rxTime":Landroid/text/format/Time;
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v19, v19, v5

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 527
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v19, v19, v7

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 528
    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v19, v19, v9

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 530
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "rxTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    return-wide v19

    .line 495
    .end local v5    # "lapHr":J
    .end local v7    # "lapMin":J
    .end local v9    # "lapSec":J
    .end local v11    # "lapse":J
    .end local v14    # "rxTime":Landroid/text/format/Time;
    :catch_0
    move-exception v3

    .line 496
    .local v3, "e":Ljava/text/ParseException;
    const-string v19, "LppAggregator"

    const-string v20, "time parse error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private convertToUtc2(III)J
    .locals 2
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "sec"    # I

    .prologue
    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyLppContext(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 155
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 156
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 157
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 158
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 160
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 161
    return-void
.end method

.method private notifyPositionContext(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "listLPPResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const-string v5, "LppAggregator"

    const-string v6, "notifyPositionContext"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 437
    .local v4, "tim":Landroid/text/format/Time;
    const/4 v0, 0x0

    .line 439
    .local v0, "cnt":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 441
    .local v3, "size":I
    new-array v5, v3, [J

    iput-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    .line 442
    new-array v5, v3, [D

    iput-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    .line 443
    new-array v5, v3, [D

    iput-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    .line 444
    new-array v5, v3, [D

    iput-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 447
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 448
    .local v2, "loc":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 449
    const-string v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 450
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 451
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 452
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 453
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 454
    add-int/lit8 v0, v0, 0x1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "loc":Landroid/location/Location;
    :cond_0
    invoke-direct {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->notifyLppContext(I)V

    .line 458
    return-void
.end method

.method private test()V
    .locals 4

    .prologue
    .line 355
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->count:I

    .line 356
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$2;

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$2;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    .line 390
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const v1, 0xabaa

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 141
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 142
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 143
    return-void
.end method

.method public final disable()V
    .locals 4

    .prologue
    .line 413
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$3;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void
.end method

.method public final enable()V
    .locals 6

    .prologue
    .line 330
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 332
    const-string v2, "LppAggregator"

    const-string v3, "enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v1, "[Note] \n"

    .line 335
    .local v1, "strConfig":Ljava/lang/String;
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    const/16 v4, 0x14

    const/16 v5, 0xf

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;-><init>(Landroid/content/Context;III)V

    .line 338
    .local v0, "config":Landroid/hardware/contextaware/aggregator/lpp/LppConfig;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->setContext(Landroid/content/Context;)V

    .line 339
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->looper:Landroid/os/Looper;

    .line 341
    new-instance v2, Landroid/os/Handler;

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;

    invoke-direct {v3, p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator$1;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TrajectoryCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TrajectoryTimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TrajectoryLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TrajectoryLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TrajectoryAltitude"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 181
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 191
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 0

    .prologue
    .line 118
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
    .line 203
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    .line 204
    .local v1, "result":Z
    const/16 v2, 0x20

    if-ne p1, v2, :cond_3

    .line 205
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .local v0, "resolution":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 208
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 211
    const-string v2, "Invalid value for LPP resolution"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x0

    .line 233
    .end local v0    # "resolution":I
    :goto_0
    return v2

    .line 215
    .restart local v0    # "resolution":I
    :cond_0
    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLppResolution:I

    .line 222
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    .line 226
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->setLppResolution(I)V

    .end local v0    # "resolution":I
    :cond_2
    :goto_1
    move v2, v1

    .line 233
    goto :goto_0

    .line 231
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected final terminateAggregator()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 26
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 262
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Context type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 264
    sget-object v20, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "names":[Ljava/lang/String;
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 272
    .local v16, "stayA":I
    if-eqz v16, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->notifyStayArea(I)V

    .line 326
    .end local v12    # "names":[Ljava/lang/String;
    .end local v16    # "stayA":I
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v12    # "names":[Ljava/lang/String;
    .restart local v16    # "stayA":I
    :cond_1
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 278
    .local v4, "dataSize":I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 280
    .local v6, "hour":I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 282
    .local v11, "minute":I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 284
    .local v15, "second":I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 286
    .local v5, "doe":I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v19

    .line 288
    .local v19, "timeDiff":[J
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 290
    .local v8, "incEast":[I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 292
    .local v9, "incNorth":[I
    sget-object v20, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 295
    .local v2, "activityType":[I
    const-wide/16 v13, 0x0

    .line 297
    .local v13, "rxTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v15}, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->convertToUtc2(III)J

    move-result-wide v13

    .line 299
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_3

    .line 301
    const-wide/16 v17, 0x0

    .line 302
    .local v17, "sumTimeDiff":J
    const/4 v3, 0x0

    .line 304
    .local v3, "apdr":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    .end local v3    # "apdr":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    invoke-direct {v3}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 305
    .restart local v3    # "apdr":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    iput-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    .line 306
    aget v20, v8, v7

    aget v21, v8, v7

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v20, v20, v22

    aget v22, v9, v7

    aget v23, v9, v7

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 308
    aget-wide v20, v19, v7

    add-long v17, v17, v20

    .line 309
    add-long v20, v13, v17

    move-wide/from16 v0, v20

    iput-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    .line 311
    aget v20, v8, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 312
    iget-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 313
    iget-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 316
    :cond_2
    iget-object v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    int-to-double v0, v5

    move-wide/from16 v22, v0

    aput-wide v22, v20, v21

    .line 317
    aget v20, v2, v7

    and-int/lit8 v20, v20, 0xf

    move/from16 v0, v20

    iput v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 318
    aget v20, v2, v7

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    .line 320
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 322
    .end local v3    # "apdr":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    .end local v17    # "sumTimeDiff":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
