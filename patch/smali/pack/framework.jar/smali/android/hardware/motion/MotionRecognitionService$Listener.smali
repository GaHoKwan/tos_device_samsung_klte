.class final Landroid/hardware/motion/MotionRecognitionService$Listener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mMotionEvents:I

.field final mMotionSensors:I

.field final mToken:Landroid/os/IBinder;

.field mUseAlways:Z

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;II)V
    .locals 1
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "motion_sensors"    # I
    .param p4, "motion_events"    # I

    .prologue
    .line 1349
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1350
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    .line 1351
    iput p3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    .line 1352
    iput p4, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    .line 1353
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    .line 1354
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .prologue
    const/high16 v6, 0x80000

    .line 1356
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x15

    if-ge v0, v2, :cond_4

    .line 1359
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 1360
    .local v1, "motion_event":I
    :try_start_0
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 1361
    const-string v2, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .binderDied event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1500(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v2

    aget v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v0

    .line 1363
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 1364
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1600(Landroid/hardware/motion/MotionRecognitionService;)[I

    move-result-object v2

    aget v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v0

    .line 1366
    :cond_0
    if-ne v1, v6, :cond_1

    .line 1367
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # operator-- for: Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1710(Landroid/hardware/motion/MotionRecognitionService;)I

    .line 1368
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1700(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1369
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v2

    sget-object v4, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->REGISTER_LISTENER:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v2, v4}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 1372
    :cond_1
    if-eq v1, v6, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1376
    :cond_2
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # operator-- for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$210(Landroid/hardware/motion/MotionRecognitionService;)I

    .line 1377
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1378
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v4, 0x133

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;I)Z

    .line 1379
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v4, 0x0

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 1358
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1384
    .end local v1    # "motion_event":I
    :cond_4
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->updateRegisteredEvents()V
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1800(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 1386
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1387
    const-string v2, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .binderDied : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1389
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1391
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1900(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 1392
    monitor-exit v3

    .line 1393
    return-void

    .line 1392
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public callback(Landroid/hardware/motion/MREvent;)V
    .locals 9
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 1396
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v4

    .line 1398
    .local v4, "motion":I
    sparse-switch v4, :sswitch_data_0

    .line 1431
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-eqz v6, :cond_7

    .line 1433
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v6}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1435
    .local v0, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$2000(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0x66

    if-ne v6, v7, :cond_6

    .line 1438
    :cond_1
    const-string v6, "MotionRecognitionService"

    const-string v7, "check current task for multi-window"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    const/4 v5, 0x0

    .line 1441
    .local v5, "packageName":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$2100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1442
    .local v3, "mActivtyMngr":Landroid/app/ActivityManager;
    if-eqz v3, :cond_2

    .line 1443
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 1448
    .end local v3    # "mActivtyMngr":Landroid/app/ActivityManager;
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1449
    .local v2, "listenerPackageName":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    const-string v6, "com.android.incallui"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1452
    :cond_4
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1465
    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    .end local v2    # "listenerPackageName":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 1403
    :sswitch_0
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " send "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ~~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    goto :goto_2

    .line 1409
    :sswitch_1
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    goto :goto_2

    .line 1426
    :sswitch_2
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " send "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ~~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1457
    .restart local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_6
    :try_start_3
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1459
    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :catch_0
    move-exception v1

    .line 1460
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "MotionRecognitionService"

    const-string v7, "Failed motionCallback"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1463
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string v6, "MotionRecognitionService"

    const-string v7, "null listener received motion event!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1445
    .restart local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_1

    .line 1398
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x3d -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x47 -> :sswitch_2
        0x48 -> :sswitch_1
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4b -> :sswitch_2
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x56 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
    .end sparse-switch
.end method
