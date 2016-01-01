.class Landroid/hardware/scontext/SContextService$2;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0

    .prologue
    .line 1456
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/sensorhub/SensorHubEvent;

    .prologue
    const/4 v4, 0x3

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    .line 1460
    const/16 v0, 0x50

    .line 1461
    .local v0, "angleDiffThrs":I
    iget-object v3, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1462
    iget-object v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    sub-float v2, v3, v4

    .line 1463
    .local v2, "diffAngle":F
    cmpg-float v3, v2, v6

    if-gez v3, :cond_0

    .line 1464
    add-float/2addr v2, v7

    .line 1466
    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1467
    sub-float v2, v7, v2

    .line 1469
    :cond_1
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_2

    int-to-float v3, v0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 1470
    const-string v3, "SContextService"

    const-string v4, "onGetSensorHubData() : AirMotion : The difference of exit and enter angle is below threshold!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v2    # "diffAngle":F
    :goto_0
    return-void

    .line 1475
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1476
    .local v1, "context":Landroid/os/Bundle;
    const-string v3, "Version"

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1477
    const-string v3, "Values"

    iget-object v4, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 1478
    iget-object v3, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v4, 0x7

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0
.end method
