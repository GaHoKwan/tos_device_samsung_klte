.class Lcom/android/server/NotificationManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1264
    .local v9, "action":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1265
    .local v21, "queryRestart":Z
    const/16 v19, 0x0

    .line 1266
    .local v19, "queryRemove":Z
    const/16 v17, 0x0

    .line 1267
    .local v17, "packageChanged":Z
    const/4 v12, 0x1

    .line 1269
    .local v12, "cancelNotifications":Z
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1275
    :cond_0
    const/16 v18, 0x0

    .line 1276
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v19, :cond_3

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v20, 0x1

    .line 1279
    .local v20, "queryReplace":Z
    :goto_0
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1280
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1312
    :goto_1
    const/4 v10, 0x0

    .line 1313
    .local v10, "anyListenersInvolved":Z
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_b

    .line 1314
    move-object/from16 v11, v18

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    aget-object v2, v11, v15

    .line 1315
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v21, :cond_a

    const/4 v5, 0x1

    :goto_3
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 1319
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1320
    const/4 v10, 0x1

    .line 1314
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1276
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v10    # "anyListenersInvolved":Z
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "queryReplace":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 1281
    .restart local v20    # "queryReplace":Z
    :cond_4
    if-eqz v21, :cond_5

    .line 1282
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 1284
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 1285
    .local v22, "uri":Landroid/net/Uri;
    if-nez v22, :cond_7

    .line 1417
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v20    # "queryReplace":Z
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_4
    return-void

    .line 1288
    .restart local v18    # "pkgList":[Ljava/lang/String;
    .restart local v20    # "queryReplace":Z
    .restart local v22    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1289
    .restart local v2    # "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1292
    if-eqz v17, :cond_9

    .line 1295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1297
    .local v13, "enabled":I
    const/4 v1, 0x1

    if-eq v13, v1, :cond_8

    if-nez v13, :cond_9

    .line 1299
    :cond_8
    const/4 v12, 0x0

    .line 1309
    .end local v13    # "enabled":I
    :cond_9
    :goto_5
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v18, v1

    .restart local v18    # "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 1316
    .end local v22    # "uri":Landroid/net/Uri;
    .restart local v10    # "anyListenersInvolved":Z
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 1325
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_b
    if-eqz v10, :cond_6

    .line 1327
    if-nez v20, :cond_c

    .line 1328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->disableNonexistentListeners()V

    .line 1332
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    goto :goto_4

    .line 1334
    .end local v10    # "anyListenersInvolved":Z
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v20    # "queryReplace":Z
    :cond_d
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1340
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    if-eqz v1, :cond_f

    .line 1342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$2400(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    .line 1349
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->register()V

    .line 1359
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1344
    :cond_f
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1360
    :cond_10
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1364
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    if-eqz v1, :cond_12

    .line 1366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/NotificationManagerService$PickupPlayer;->register()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$2700(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    .line 1373
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 1379
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1368
    :cond_12
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1380
    :cond_13
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1389
    const-string/jumbo v1, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1390
    .local v14, "extraState":Ljava/lang/String;
    if-eqz v14, :cond_14

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1394
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1395
    .end local v14    # "extraState":Ljava/lang/String;
    :cond_15
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1396
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1397
    .local v8, "userHandle":I
    if-ltz v8, :cond_6

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_4

    .line 1400
    .end local v8    # "userHandle":I
    :cond_16
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1403
    :cond_17
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1406
    :cond_18
    const-string v1, "android.intent.action.DORMANT_MODE_ON"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1407
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "received android.intent.action.DORMANT_MODE_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$3102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_disable_led_indicator"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_19

    const/4 v1, 0x1

    :goto_8
    # setter for: Lcom/android/server/NotificationManagerService;->isDormantModeLedDisabled:Z
    invoke-static {v3, v1}, Lcom/android/server/NotificationManagerService;->access$3202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1409
    :cond_19
    const/4 v1, 0x0

    goto :goto_8

    .line 1412
    :cond_1a
    const-string v1, "android.intent.action.DORMANT_MODE_OFF"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1413
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "received android.intent.action.DORMANT_MODE_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$3102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1301
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v18    # "pkgList":[Ljava/lang/String;
    .restart local v20    # "queryReplace":Z
    .restart local v22    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    goto/16 :goto_5
.end method
