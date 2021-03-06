.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 490
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 491
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 495
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 497
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 498
    .local v15, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v16, "MountService"

    const-string v17, "++ H_UNMOUNT_PM_ADDOBJ (%s)"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 505
    .restart local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v17, "MountService"

    const-string v18, "++ H_UNMOUNT_PM_UPDATE (%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz v15, :cond_3

    iget-object v0, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_1
    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_1
    const/4 v3, 0x0

    .line 513
    .local v3, "bFoundPath":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 514
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/MountService$UnmountCallBack;

    .line 516
    .local v14, "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v16

    iget-object v0, v14, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 517
    .local v13, "storage":Landroid/os/storage/StorageVolume;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 518
    const/4 v3, 0x1

    .line 522
    .end local v13    # "storage":Landroid/os/storage/StorageVolume;
    .end local v14    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_2
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    if-eqz v3, :cond_5

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 526
    const-string v16, "MountService"

    const-string v17, "Updating external media status on PackageManager"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 505
    .end local v3    # "bFoundPath":Z
    .end local v6    # "i":I
    :cond_3
    const-string v16, "null"

    goto/16 :goto_1

    .line 514
    .restart local v3    # "bFoundPath":Z
    .restart local v6    # "i":I
    .restart local v13    # "storage":Landroid/os/storage/StorageVolume;
    .restart local v14    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 522
    .end local v13    # "storage":Landroid/os/storage/StorageVolume;
    .end local v14    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 531
    :cond_5
    const-string v16, "MountService"

    const-string/jumbo v17, "skip update enternal media status"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 537
    .end local v3    # "bFoundPath":Z
    .end local v6    # "i":I
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_2
    const-string v16, "MountService"

    const-string v17, "++ H_UNMOUNT_PM_DONE"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v16, "MountService"

    const-string v17, "Updated status. Processing requests"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 541
    .local v9, "size":I
    new-array v10, v9, [I

    .line 542
    .local v10, "sizeArr":[I
    const/4 v11, 0x0

    .line 544
    .local v11, "sizeArrN":I
    const-string v16, "activity"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService;

    .line 546
    .local v2, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v12, v11

    .end local v11    # "sizeArrN":I
    .local v12, "sizeArrN":I
    :goto_3
    if-ge v6, v9, :cond_d

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 548
    .restart local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v7, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 549
    .local v7, "path":Ljava/lang/String;
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "H_UNMOUNT_PM_DONE -> path : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", force = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v0, v15, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v4, 0x0

    .line 551
    .local v4, "done":Z
    iget-boolean v0, v15, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 552
    const/4 v4, 0x1

    .line 568
    :cond_6
    :goto_4
    if-nez v4, :cond_b

    iget v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 570
    const-string v16, "MountService"

    const-string v17, "Retrying to kill storage users again"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    iget v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x1e

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v11, v12

    .line 546
    .end local v12    # "sizeArrN":I
    .restart local v11    # "sizeArrN":I
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v12, v11

    .end local v11    # "sizeArrN":I
    .restart local v12    # "sizeArrN":I
    goto/16 :goto_3

    .line 554
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v8

    .line 555
    .local v8, "pids":[I
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "H_UNMOUNT_PM_DONE -> getStorageUsers : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v8

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eqz v8, :cond_8

    array-length v0, v8

    move/from16 v16, v0

    if-nez v16, :cond_9

    .line 557
    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    .line 560
    :cond_9
    const-string/jumbo v16, "unmount media"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v8

    .line 563
    if-eqz v8, :cond_a

    array-length v0, v8

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 564
    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 576
    .end local v8    # "pids":[I
    :cond_b
    iget v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    .line 577
    const-string v16, "MountService"

    const-string v17, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_c
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sizeArrN":I
    .restart local v11    # "sizeArrN":I
    aput v6, v10, v12

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 586
    .end local v4    # "done":Z
    .end local v7    # "path":Ljava/lang/String;
    .end local v11    # "sizeArrN":I
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v12    # "sizeArrN":I
    :cond_d
    add-int/lit8 v6, v12, -0x1

    :goto_6
    if-ltz v6, :cond_0

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    aget v17, v10, v6

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 586
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 592
    .end local v2    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v6    # "i":I
    .end local v9    # "size":I
    .end local v10    # "sizeArr":[I
    .end local v12    # "sizeArrN":I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 593
    .restart local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v16, "MountService"

    const-string v17, "++ H_UNMOUNT_MS (%s)"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v15}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 599
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 600
    :catch_0
    move-exception v5

    .line 601
    .local v5, "ex":Ljava/lang/Exception;
    const-string v16, "MountService"

    const-string v17, "Boot-time mount exception"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
