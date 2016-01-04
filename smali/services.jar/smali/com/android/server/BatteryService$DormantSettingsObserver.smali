.class Lcom/android/server/BatteryService$DormantSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DormantSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 358
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12
    .param p1, "selfChange"    # Z

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 364
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 367
    :try_start_0
    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "dormant_switch_onoff"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    const/4 v7, 0x1

    :goto_0
    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v9, v7}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 368
    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "dormant_disable_led_indicator"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_1

    const/4 v7, 0x1

    :goto_1
    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v9, v7}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 369
    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "dormant_always"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_2

    const/4 v7, 0x1

    :goto_2
    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v9, v7}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 370
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    const-string v7, "dormant_start_hour"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 373
    .local v4, "dormantStartHour":I
    const-string v7, "dormant_start_min"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 374
    .local v5, "dormantStartMinute":I
    const-string v7, "dormant_end_hour"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 375
    .local v1, "dormantEndHour":I
    const-string v7, "dormant_end_min"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 376
    .local v2, "dormantEndMinute":I
    mul-int/lit8 v7, v4, 0x3c

    add-int v6, v7, v5

    .line 377
    .local v6, "dormantStartMinutes":I
    mul-int/lit8 v7, v1, 0x3c

    add-int v3, v7, v2

    .line 378
    .local v3, "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant OnOff Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant Disable LED Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant Always Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant time Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ~ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 385
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 386
    :try_start_1
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 387
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    return-void

    .line 367
    .end local v1    # "dormantEndHour":I
    .end local v2    # "dormantEndMinute":I
    .end local v3    # "dormantEndMinutes":I
    .end local v4    # "dormantStartHour":I
    .end local v5    # "dormantStartMinute":I
    .end local v6    # "dormantStartMinutes":I
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 368
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 369
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 370
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 387
    .restart local v1    # "dormantEndHour":I
    .restart local v2    # "dormantEndMinute":I
    .restart local v3    # "dormantEndMinutes":I
    .restart local v4    # "dormantStartHour":I
    .restart local v5    # "dormantStartMinute":I
    .restart local v6    # "dormantStartMinutes":I
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method
