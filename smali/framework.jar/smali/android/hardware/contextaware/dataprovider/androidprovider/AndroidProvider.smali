.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "AndroidProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 58
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public updateAPStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    .line 70
    return-void
.end method
