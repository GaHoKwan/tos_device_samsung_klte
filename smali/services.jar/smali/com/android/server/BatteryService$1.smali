.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "action":Ljava/lang/String;
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 230
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "bootCompleted"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 233
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    # setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;Z)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "dormant_switch_onoff"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "dormant_disable_led_indicator"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "dormant_always"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 239
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const-string v17, "dormant_start_hour"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 242
    .local v11, "dormantStartHour":I
    const-string v17, "dormant_start_min"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 243
    .local v13, "dormantStartMinute":I
    const-string v17, "dormant_end_hour"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 244
    .local v6, "dormantEndHour":I
    const-string v17, "dormant_end_min"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 245
    .local v8, "dormantEndMinute":I
    mul-int/lit8 v17, v11, 0x3c

    add-int v14, v17, v13

    .line 246
    .local v14, "dormantStartMinutes":I
    mul-int/lit8 v17, v6, 0x3c

    add-int v9, v17, v8

    .line 247
    .local v9, "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant OnOff Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant Disable LED Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant Always Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant time Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ~ "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v0, v14, v9}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 255
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 256
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "dormantEndHour":I
    .end local v8    # "dormantEndMinute":I
    .end local v9    # "dormantEndMinutes":I
    .end local v11    # "dormantStartHour":I
    .end local v13    # "dormantStartMinute":I
    .end local v14    # "dormantStartMinutes":I
    :cond_0
    :goto_3
    return-void

    .line 236
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 237
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 238
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 239
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 256
    .restart local v6    # "dormantEndHour":I
    .restart local v8    # "dormantEndMinute":I
    .restart local v9    # "dormantEndMinutes":I
    .restart local v11    # "dormantStartHour":I
    .restart local v13    # "dormantStartMinute":I
    .restart local v14    # "dormantStartMinutes":I
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 257
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "dormantEndHour":I
    .end local v8    # "dormantEndMinute":I
    .end local v9    # "dormantEndMinutes":I
    .end local v11    # "dormantStartHour":I
    .end local v13    # "dormantStartMinute":I
    .end local v14    # "dormantStartMinutes":I
    :cond_4
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 259
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 261
    monitor-exit v18

    goto :goto_3

    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v17

    .line 262
    :cond_5
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 264
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 266
    monitor-exit v18

    goto :goto_3

    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v17

    .line 267
    :cond_6
    const-string v17, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 270
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 271
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "led_indicator_charing"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "led_indicator_low_battery"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 273
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Led Charging Settings = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Led Low Battery Settings = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "dormant_switch_onoff"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "dormant_disable_led_indicator"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    const-string v17, "dormant_always"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 279
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 281
    const-string v17, "dormant_start_hour"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 282
    .restart local v11    # "dormantStartHour":I
    const-string v17, "dormant_start_min"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 283
    .restart local v13    # "dormantStartMinute":I
    const-string v17, "dormant_end_hour"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 284
    .restart local v6    # "dormantEndHour":I
    const-string v17, "dormant_end_min"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 285
    .restart local v8    # "dormantEndMinute":I
    mul-int/lit8 v17, v11, 0x3c

    add-int v14, v17, v13

    .line 286
    .restart local v14    # "dormantStartMinutes":I
    mul-int/lit8 v17, v6, 0x3c

    add-int v9, v17, v8

    .line 287
    .restart local v9    # "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant OnOff Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant Disable LED Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant Always Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dormant time Settings = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ~ "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mSetDormantAlarm:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 293
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.android.server.BatteryService.action.DORMANT_START"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v12, "dormantStartIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 295
    .local v15, "dormantStartPendingIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-string v17, "com.android.server.BatteryService.action.DORMANT_END"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v7, "dormantEndIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 297
    .local v10, "dormantEndPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 298
    .local v4, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v4, :cond_d

    .line 299
    invoke-virtual {v4, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 300
    invoke-virtual {v4, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 305
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/BatteryService;->mSetDormantAlarm:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;Z)Z

    .line 308
    .end local v4    # "alarmManager":Landroid/app/AlarmManager;
    .end local v7    # "dormantEndIntent":Landroid/content/Intent;
    .end local v10    # "dormantEndPendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "dormantStartIntent":Landroid/content/Intent;
    .end local v15    # "dormantStartPendingIntent":Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v0, v14, v9}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 311
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 312
    monitor-exit v18

    goto/16 :goto_3

    :catchall_4
    move-exception v17

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v17

    .line 271
    .end local v6    # "dormantEndHour":I
    .end local v8    # "dormantEndMinute":I
    .end local v9    # "dormantEndMinutes":I
    .end local v11    # "dormantStartHour":I
    .end local v13    # "dormantStartMinute":I
    .end local v14    # "dormantStartMinutes":I
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 272
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 276
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 277
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 278
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 279
    :catchall_5
    move-exception v17

    :try_start_8
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v17

    .line 302
    .restart local v4    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v6    # "dormantEndHour":I
    .restart local v7    # "dormantEndIntent":Landroid/content/Intent;
    .restart local v8    # "dormantEndMinute":I
    .restart local v9    # "dormantEndMinutes":I
    .restart local v10    # "dormantEndPendingIntent":Landroid/app/PendingIntent;
    .restart local v11    # "dormantStartHour":I
    .restart local v12    # "dormantStartIntent":Landroid/content/Intent;
    .restart local v13    # "dormantStartMinute":I
    .restart local v14    # "dormantStartMinutes":I
    .restart local v15    # "dormantStartPendingIntent":Landroid/app/PendingIntent;
    :cond_d
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AlarmManager is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 313
    .end local v4    # "alarmManager":Landroid/app/AlarmManager;
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "dormantEndHour":I
    .end local v7    # "dormantEndIntent":Landroid/content/Intent;
    .end local v8    # "dormantEndMinute":I
    .end local v9    # "dormantEndMinutes":I
    .end local v10    # "dormantEndPendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "dormantStartHour":I
    .end local v12    # "dormantStartIntent":Landroid/content/Intent;
    .end local v13    # "dormantStartMinute":I
    .end local v14    # "dormantStartMinutes":I
    .end local v15    # "dormantStartPendingIntent":Landroid/app/PendingIntent;
    :cond_e
    const-string v17, "com.android.server.BatteryService.action.DORMANT_START"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 315
    :try_start_9
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v19, "Dormant mode start"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 317
    monitor-exit v18

    goto/16 :goto_3

    :catchall_6
    move-exception v17

    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v17

    .line 318
    :cond_f
    const-string v17, "com.android.server.BatteryService.action.DORMANT_END"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 320
    :try_start_a
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v19, "Dormant mode end"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 322
    monitor-exit v18

    goto/16 :goto_3

    :catchall_7
    move-exception v17

    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v17

    .line 323
    :cond_10
    const-string v17, "com.android.systemui.power.action.POWER_SHARING"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 324
    const-string v17, "power_sharing_enable"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 325
    .local v16, "powerSharingEnable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setPowerSharing(Z)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 326
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "success to set Power sharing as "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 328
    :cond_11
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "fail to set Power sharing"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
