.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1469
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1470
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    .local v2, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)I

    move-result v7

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v1, v7}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;I)I

    move-result v20

    .line 1480
    .local v20, "result":I
    const-string v1, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitForAlarm result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1484
    const/high16 v1, 0x10000

    and-int v1, v1, v20

    if-eqz v1, :cond_0

    .line 1488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 1490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1491
    new-instance v19, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v19, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1497
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 1498
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1499
    .local v5, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1520
    .local v3, "nowELAPSED":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)V

    .line 1524
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_8

    .line 1525
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    const-string v1, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending alarm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    # getter for: Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "android.intent.extra.ALARM_TARGET_TIME"

    iget-wide v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    invoke-virtual {v1, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1531
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v1

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    .line 1535
    :cond_1
    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    # getter for: Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Landroid/content/Intent;

    move-result-object v1

    const-string v10, "android.intent.extra.ALARM_COUNT"

    iget v11, v13, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1545
    :cond_2
    new-instance v18, Lcom/android/server/AlarmManagerService$InFlight;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1547
    .local v18, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # operator++ for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1608(Lcom/android/server/AlarmManagerService;)I

    .line 1549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v7, Ljava/lang/Integer;

    iget v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1551
    .local v14, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1552
    iget v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v1, :cond_6

    .line 1553
    const/4 v1, 0x1

    iput v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1554
    iput-wide v3, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1558
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v16, v0

    .line 1559
    .local v16, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1560
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v1, :cond_7

    .line 1561
    const/4 v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1562
    move-object/from16 v0, v16

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1566
    :goto_3
    iget v1, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    iget v1, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_5

    .line 1568
    :cond_3
    const-string v1, "AlarmManager"

    const-string/jumbo v7, "trigger ELAPSED_REALTIME_WAKEUP or RTC_WAKEUP"

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    # getter for: Lcom/android/server/AlarmManagerService;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1570
    const-string v1, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@trigger WAKEUP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_4
    iget v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1573
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1574
    iget-object v1, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 1524
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v18    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1556
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v18    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_6
    iget v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1577
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v18    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v15

    .line 1578
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    iget-wide v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_5

    .line 1581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 1587
    .end local v3    # "nowELAPSED":J
    .end local v5    # "nowRTC":J
    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v17    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1564
    .restart local v3    # "nowELAPSED":J
    .restart local v5    # "nowRTC":J
    .restart local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v17    # "i":I
    .restart local v18    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_7
    :try_start_3
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1583
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v18    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v15

    .line 1584
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "AlarmManager"

    const-string v7, "Failure sending alarm."

    invoke-static {v1, v7, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1587
    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_8
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
