.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "SatelliteRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 163
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 164
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    .line 165
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 150
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 151
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    .line 152
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NumSat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Prn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Snr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "El"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Az"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Mask"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 177
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 126
    return-object p0
.end method

.method protected final registerGpsListener()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsStatusListener()Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_0
.end method

.method protected final unregisterGpsListener()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsStatusListener()Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    goto :goto_0
.end method
