.class Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;
.super Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;
.source "SensorHubOperationDebugging.java"


# instance fields
.field private final mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayTime"    # I

    .prologue
    .line 40
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    .line 41
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 43
    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .locals 4
    .param p1, "packet"    # [B

    .prologue
    .line 54
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    move-result v0

    .line 61
    .local v0, "result":I
    if-gtz v0, :cond_1

    .line 62
    const-string v1, "fail to send cmd to SensorHub"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "success to send cmd to SensorHub"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
