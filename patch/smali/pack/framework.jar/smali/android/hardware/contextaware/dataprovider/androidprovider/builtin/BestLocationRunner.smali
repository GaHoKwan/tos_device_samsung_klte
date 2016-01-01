.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "BestLocationRunner.java"


# instance fields
.field private mCriteria:Landroid/location/Criteria;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 153
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 154
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    .line 155
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 140
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 141
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    .line 142
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 167
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, "getGpsManager() is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "provider":Ljava/lang/String;
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

    goto :goto_0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 116
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 128
    return-object p0
.end method

.method protected final initializeManager()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->initializeManager()V

    .line 76
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    .line 77
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 78
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 80
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 81
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 82
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/BestLocationRunner;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 83
    return-void
.end method
