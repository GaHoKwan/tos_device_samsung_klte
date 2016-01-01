.class public Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ICurrentPositionObservable;
.implements Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    }
.end annotation


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L

.field public static final GPS_TYPE:I = 0x1

.field public static final NONE_TYPE:I = 0x0

.field public static final WPS_TYPE:I = 0x2


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

.field private mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 245
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 317
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    .line 96
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 98
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;DD)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->calculationDistance(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V

    return-void
.end method

.method private calculationDistance(DD)D
    .locals 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    .line 465
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 466
    .local v0, "distance":D
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 467
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v4

    sub-double v4, p3, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 471
    :cond_0
    return-wide v0
.end method

.method private clearTimeOutCheckService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 585
    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 586
    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 588
    :cond_0
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private registerGpsListener()V
    .locals 7

    .prologue
    .line 594
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 595
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private registerWpsListener()V
    .locals 7

    .prologue
    .line 606
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 607
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private unregisterGpsListener()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 619
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private unregisterWpsListener()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 630
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private updateEmptyPosition()V
    .locals 15

    .prologue
    .line 568
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v14, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>()V

    .line 572
    .local v14, "emptyPosition":Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v1

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v11

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v12

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateGpsPosition()V
    .locals 14

    .prologue
    .line 540
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 544
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v12}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateWpsPosition()V
    .locals 14

    .prologue
    .line 554
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 558
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D
    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D
    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D
    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F
    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v12}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I
    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 419
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 429
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 431
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 378
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 379
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 384
    const-string v0, "Looper is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 389
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 393
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 396
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 397
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 399
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 401
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 402
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 403
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 405
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 215
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 218
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 222
    :cond_0
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 223
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 224
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 227
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 521
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 523
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateGpsPosition()V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    .line 527
    :cond_2
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    .line 532
    :cond_4
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0
.end method

.method public final occurTimeOut()V
    .locals 0

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 646
    return-void
.end method

.method public final registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 493
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .line 494
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final unregisterCurrentPositionObserver()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .line 505
    return-void
.end method
