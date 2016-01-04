.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/WpsRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "WpsRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 131
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    .line 132
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 118
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    .line 119
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
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
    .line 143
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 144
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "network"

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 105
    return-object p0
.end method
