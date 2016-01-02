.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.source "ActivityTrackerHandler.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
