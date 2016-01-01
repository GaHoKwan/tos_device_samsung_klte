.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerInterruptRunner.java"


# static fields
.field private static final DEFAULT_ACTIVITY_TYPE:I


# instance fields
.field private mActivityType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->mActivityType:I

    .line 58
    return-void
.end method


# virtual methods
.method protected final getActivityType()B
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->mActivityType:I

    if-nez v0, :cond_0

    .line 70
    const/4 v0, -0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->mActivityType:I

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->mActivityType:I

    .line 156
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 132
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    .line 110
    .local v1, "result":Z
    const/16 v2, 0x25

    if-ne p1, v2, :cond_0

    .line 111
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    .local v0, "activityType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 114
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->mActivityType:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    or-int/2addr v2, v3

    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerInterruptRunner;->mActivityType:I

    .line 119
    .end local v0    # "activityType":I
    :goto_0
    return v1

    .line 116
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
