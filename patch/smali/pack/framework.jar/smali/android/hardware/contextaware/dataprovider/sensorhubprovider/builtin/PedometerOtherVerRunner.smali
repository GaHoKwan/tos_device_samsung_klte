.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerOtherVerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.source "PedometerOtherVerRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerOtherVerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)I
    .locals 1
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 51
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 52
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->parse([BI)I

    move-result v0

    return v0
.end method
