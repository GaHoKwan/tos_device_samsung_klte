.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawSensorProvider.java"


# static fields
.field protected static final DEFAULT_SENSOR_RATE:I = 0xea60


# instance fields
.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRate:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p5, "rate"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 62
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;-><init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 58
    iput p5, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    .line 59
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method private registerSensorListener()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    const-string v0, "cannot register the sensor listener"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->getSensorType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->unregisterSensorListener()V

    .line 120
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->registerSensorListener()V

    .line 110
    return-void
.end method

.method protected abstract getSensorType()I
.end method

.method protected final initializeManager()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 164
    const-string v0, "mContext is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "cannot create the SensorManager object"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final terminateManager()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 186
    return-void
.end method

.method protected unregisterSensorListener()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    const-string v0, "cannot unregister the sensor listener"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
