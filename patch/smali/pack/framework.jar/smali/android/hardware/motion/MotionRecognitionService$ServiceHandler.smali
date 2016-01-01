.class final Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1469
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    .line 1470
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1471
    return-void
.end method

.method private checkListener(III)Z
    .locals 3
    .param p1, "event"    # I
    .param p2, "motionSensors"    # I
    .param p3, "motion"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1475
    if-nez p3, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return v0

    .line 1479
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    .line 1480
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/hardware/motion/MotionRecognitionSettings;->isSettingMotion(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1481
    goto :goto_0

    .line 1482
    :cond_2
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/hardware/motion/MotionRecognitionSettings;->isOpenAPIMotion(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1483
    goto :goto_0

    .line 1486
    :cond_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1489
    :sswitch_0
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1545
    goto :goto_0

    .line 1495
    :sswitch_1
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_0

    const/high16 v2, 0x20000

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1500
    :sswitch_2
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1505
    :sswitch_3
    and-int/lit16 v2, p3, 0x80

    if-nez v2, :cond_0

    and-int/lit16 v2, p3, 0x100

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1511
    :sswitch_4
    and-int/lit16 v2, p3, 0x800

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1518
    :sswitch_5
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1523
    :sswitch_6
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_0

    const/high16 v2, 0x80000

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1531
    :sswitch_7
    and-int/lit16 v2, p3, 0x400

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_8
    move v0, v1

    .line 1540
    goto :goto_0

    .line 1486
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x1c -> :sswitch_8
        0x1d -> :sswitch_8
        0x1e -> :sswitch_8
        0x1f -> :sswitch_8
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x3d -> :sswitch_6
        0x44 -> :sswitch_7
        0x48 -> :sswitch_2
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_4
        0x56 -> :sswitch_1
        0x61 -> :sswitch_4
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1550
    if-eqz p1, :cond_2

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x55

    if-ne v5, v6, :cond_2

    .line 1552
    const/4 v4, 0x0

    .line 1554
    .local v4, "motionEvent":Landroid/hardware/motion/MREvent;
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/hardware/motion/MREvent;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :goto_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v6, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1560
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1561
    .local v3, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    invoke-virtual {v4}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v5

    iget v7, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    iget v8, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    invoke-direct {p0, v5, v7, v8}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->checkListener(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1562
    invoke-virtual {v3, v4}, Landroid/hardware/motion/MotionRecognitionService$Listener;->callback(Landroid/hardware/motion/MREvent;)V

    goto :goto_1

    .line 1566
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1555
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "MotionRecognitionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1564
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-virtual {v5, v4}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->recycle(Landroid/hardware/motion/MREvent;)V

    .line 1565
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1566
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1568
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "motionEvent":Landroid/hardware/motion/MREvent;
    :cond_2
    return-void
.end method
