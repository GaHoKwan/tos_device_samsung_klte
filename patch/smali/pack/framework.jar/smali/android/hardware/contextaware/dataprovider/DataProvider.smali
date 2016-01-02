.class public abstract Landroid/hardware/contextaware/dataprovider/DataProvider;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "DataProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected final initialize()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "mContext is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->initializeManager()V

    goto :goto_0
.end method

.method protected abstract initializeManager()V
.end method

.method protected final terminate()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->terminateManager()V

    .line 68
    return-void
.end method

.method protected abstract terminateManager()V
.end method
