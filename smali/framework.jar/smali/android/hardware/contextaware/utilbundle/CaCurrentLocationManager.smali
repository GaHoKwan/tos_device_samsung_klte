.class public Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;
.super Ljava/lang/Object;
.source "CaCurrentLocationManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ICurrentLocationObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mCriteria:Landroid/location/Criteria;

.field private mEnable:Z

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    .line 117
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLocationListener:Landroid/location/LocationListener;

    .line 68
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLooper:Landroid/os/Looper;

    .line 70
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->initializeManager(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->registerCurrentLocationObserver(Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 211
    const-string v0, "cannot unregister the gps listener"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 221
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 172
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 173
    const-string v1, "mGpsManager is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_1

    .line 178
    const-string v1, "Looper is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    :cond_2
    const-string v1, "cannot register the gps listener"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    if-eqz v1, :cond_4

    .line 189
    const-string v1, "mEnable value is true."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->disable()V

    .line 193
    :cond_4
    iput-boolean v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BestProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 197
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$2;

    invoke-direct {v2, p0, v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    .line 84
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 85
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 86
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 87
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 88
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 89
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 91
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    .line 94
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 98
    :cond_0
    iput-boolean v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    .line 99
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentLocationObserver(JJDDD)V
    .locals 11
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D

    .prologue
    .line 254
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;->updateCurrentLocation(JJDDD)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->disable()V

    .line 260
    return-void
.end method

.method public final registerCurrentLocationObserver(Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

    .prologue
    .line 243
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

    .line 244
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final unregisterCurrentLocationObserver()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentLocationObserver;

    .line 249
    return-void
.end method
