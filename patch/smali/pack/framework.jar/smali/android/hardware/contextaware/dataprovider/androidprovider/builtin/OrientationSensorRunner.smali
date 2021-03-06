.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;
.source "OrientationSensorRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 47
    const v5, 0xea60

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p5, "rate"    # I

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 151
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 152
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->disable()V

    .line 153
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 138
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 139
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->enable()V

    .line 140
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OriX"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OriY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OriZ"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

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

.method protected final getSensorType()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x3

    return v0
.end method
