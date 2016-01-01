.class Landroid/hardware/scontext/SContextService$1;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/ContextAwareListener;


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
    .line 1375
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 1378
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p1, v2, :cond_1

    .line 1379
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p1, v2, :cond_2

    .line 1381
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->updatePedometerInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v4, p2}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, v4}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1382
    :cond_2
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p1, v2, :cond_3

    .line 1383
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x3

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1384
    :cond_3
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    if-ne p1, v2, :cond_4

    .line 1385
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x4

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1386
    :cond_4
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p1, v2, :cond_5

    .line 1387
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x5

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1388
    :cond_5
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p1, v2, :cond_6

    .line 1389
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x6

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1390
    :cond_6
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    if-ne p1, v2, :cond_7

    .line 1391
    const-string v2, "Temperature"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 1392
    .local v1, "temp":[D
    const-string v2, "Humidity"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 1393
    .local v0, "humi":[D
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "context":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1394
    .restart local p2    # "context":Landroid/os/Bundle;
    const-string v2, "EnvSensorType"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1396
    const-string v2, "Temperature"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 1397
    const-string v2, "Humidity"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 1398
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x8

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1399
    .end local v0    # "humi":[D
    .end local v1    # "temp":[D
    :cond_7
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    if-ne p1, v2, :cond_8

    .line 1400
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x9

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1401
    :cond_8
    if-nez p1, :cond_9

    .line 1402
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xa

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1403
    :cond_9
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p1, v2, :cond_a

    .line 1404
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xb

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1405
    :cond_a
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p1, v2, :cond_b

    .line 1406
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xc

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1407
    :cond_b
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p1, v2, :cond_c

    .line 1408
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xd

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1409
    :cond_c
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p1, v2, :cond_d

    .line 1410
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xe

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1411
    :cond_d
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p1, v2, :cond_e

    .line 1412
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xf

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1413
    :cond_e
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    if-ne p1, v2, :cond_f

    .line 1414
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x10

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1415
    :cond_f
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    if-ne p1, v2, :cond_10

    .line 1416
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x11

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1417
    :cond_10
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    if-ne p1, v2, :cond_11

    .line 1418
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x12

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1419
    :cond_11
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    if-ne p1, v2, :cond_12

    .line 1420
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x13

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1421
    :cond_12
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    if-ne p1, v2, :cond_13

    .line 1422
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x14

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1423
    :cond_13
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    if-ne p1, v2, :cond_14

    .line 1424
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x15

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1425
    :cond_14
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    if-ne p1, v2, :cond_15

    .line 1426
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x16

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1427
    :cond_15
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    if-ne p1, v2, :cond_16

    .line 1428
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x17

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1429
    :cond_16
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    if-ne p1, v2, :cond_17

    .line 1430
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x18

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1431
    :cond_17
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    if-ne p1, v2, :cond_18

    .line 1432
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x19

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1433
    :cond_18
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    if-ne p1, v2, :cond_19

    .line 1434
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1a

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1435
    :cond_19
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    if-ne p1, v2, :cond_1a

    .line 1436
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1b

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1437
    :cond_1a
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    if-ne p1, v2, :cond_1b

    .line 1438
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1c

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1439
    :cond_1b
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    if-ne p1, v2, :cond_1c

    .line 1440
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1d

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1441
    :cond_1c
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    if-ne p1, v2, :cond_1d

    .line 1442
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1e

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1443
    :cond_1d
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    if-ne p1, v2, :cond_1e

    .line 1444
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1f

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1445
    :cond_1e
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    if-ne p1, v2, :cond_1f

    .line 1446
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x20

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1447
    :cond_1f
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    if-ne p1, v2, :cond_20

    .line 1448
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x21

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1449
    :cond_20
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SIDE_PRESS_MOTION_SERVICE:I

    if-ne p1, v2, :cond_0

    .line 1450
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x22

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
