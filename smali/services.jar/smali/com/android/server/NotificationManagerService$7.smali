.class Lcom/android/server/NotificationManagerService$7;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V
    .locals 0

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/NotificationManagerService$7;->val$callingUid:I

    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$7;->val$isSystemNotification:Z

    iput p6, p0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/NotificationManagerService$7;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 2029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    const/4 v7, 0x2

    # invokes: Lcom/android/server/NotificationManagerService;->clamp(III)I
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3900(III)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 2032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 2033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 2034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 2044
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v4, 0xa

    .line 2050
    .local v9, "score":I
    move/from16 v24, v9

    .line 2051
    .local v24, "initialScore":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/notification/NotificationScorer;

    .line 2055
    .local v33, "scorer":Lcom/android/internal/notification/NotificationScorer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v9}, Lcom/android/internal/notification/NotificationScorer;->getScore(Landroid/app/Notification;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 2056
    :catch_0
    move-exception v35

    .line 2057
    .local v35, "t":Ljava/lang/Throwable;
    const-string v4, "NotificationService"

    const-string v5, "Scorer threw on .getScore."

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2064
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v33    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v35    # "t":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.scoreModified"

    move/from16 v0, v24

    if-eq v9, v0, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$7;->val$callingUid:I

    # invokes: Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2069
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/NotificationManagerService$7;->val$isSystemNotification:Z

    if-nez v4, :cond_2

    .line 2070
    const/16 v9, -0x3e8

    .line 2071
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suppressing notification from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by user request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_2
    const/16 v4, -0x14

    if-ge v9, v4, :cond_4

    .line 2409
    :goto_2
    return-void

    .line 2064
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 2086
    :cond_4
    const/16 v4, -0xa

    if-lt v9, v4, :cond_17

    const/4 v14, 0x1

    .line 2088
    .local v14, "canInterrupt":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v42

    monitor-enter v42

    .line 2089
    :try_start_1
    new-instance v3, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$7;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$7;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v3 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2091
    .local v3, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v31, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 2092
    .local v31, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v28, 0x0

    .line 2095
    .local v28, "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v23

    .line 2096
    .local v23, "index":I
    if-gez v23, :cond_18

    .line 2097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2108
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "notification_reminder"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    :goto_5
    # setter for: Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z
    invoke-static {v5, v4}, Lcom/android/server/NotificationManagerService;->access$3502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->sendMsg()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)V

    .line 2116
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    .line 2117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 2122
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v36

    .line 2124
    .local v36, "token":J
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v16

    .line 2126
    .local v16, "currentUser":I
    :try_start_3
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_1c

    .line 2130
    if-eqz v28, :cond_1a

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_1a

    .line 2131
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 2132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v21

    .line 2134
    .local v21, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2137
    :try_start_5
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_1b

    .line 2154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$4500(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 2182
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2183
    new-instance v27, Landroid/content/Intent;

    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2186
    .local v27, "notificationArrivedIntent":Landroid/content/Intent;
    const-string v4, "com.android.phone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "com.android.mms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2187
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_a

    .line 2188
    const-string v4, "Notification"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2189
    const-string v4, "pkg"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2190
    const-string v4, "id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2194
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2198
    .end local v27    # "notificationArrivedIntent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$4600(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 2219
    .end local v21    # "identity":J
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-nez v4, :cond_14

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_14

    :cond_c
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    if-ne v4, v5, :cond_14

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v16

    if-ne v4, v0, :cond_14

    :cond_d
    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    .line 2235
    .local v12, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_e

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_e
    const/16 v38, 0x1

    .line 2240
    .local v38, "useDefaultSound":Z
    :goto_9
    const/16 v34, 0x0

    .line 2241
    .local v34, "soundUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 2243
    .local v19, "hasValidSound":Z
    if-eqz v38, :cond_20

    .line 2244
    sget-object v34, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 2248
    .local v32, "resolver":Landroid/content/ContentResolver;
    const-string v4, "notification_sound"

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/16 v19, 0x1

    .line 2255
    .end local v32    # "resolver":Landroid/content/ContentResolver;
    :cond_f
    :goto_a
    if-eqz v19, :cond_11

    .line 2256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_22

    const/16 v25, 0x1

    .line 2258
    .local v25, "looping":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->audioStreamType:I

    if-ltz v4, :cond_23

    .line 2259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v13, v4, Landroid/app/Notification;->audioStreamType:I

    .line 2263
    .local v13, "audioStreamType":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2266
    invoke-virtual {v12, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v12}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-nez v4, :cond_11

    .line 2268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v21

    .line 2270
    .restart local v21    # "identity":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v30

    .line 2271
    .local v30, "player":Landroid/media/IRingtonePlayer;
    if-eqz v30, :cond_10

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move/from16 v2, v25

    invoke-interface {v0, v1, v4, v2, v13}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V

    .line 2275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->register()V

    .line 2280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_10

    .line 2281
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/NotificationManagerService$7$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/NotificationManagerService$7$1;-><init>(Lcom/android/server/NotificationManagerService$7;)V

    aput-object v5, v29, v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2290
    .local v29, "parameter":[Ljava/lang/Object;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v5, v4}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/android/server/NotificationManagerService$7$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/NotificationManagerService$7$2;-><init>(Lcom/android/server/NotificationManagerService$7;)V

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2327
    .end local v29    # "parameter":[Ljava/lang/Object;
    :cond_10
    :goto_d
    :try_start_8
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2334
    .end local v13    # "audioStreamType":I
    .end local v21    # "identity":J
    .end local v25    # "looping":Z
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    :cond_11
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_26

    const/16 v18, 0x1

    .line 2338
    .local v18, "hasCustomVibrate":Z
    :goto_f
    if-nez v18, :cond_27

    if-eqz v19, :cond_27

    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const/4 v15, 0x1

    .line 2345
    .local v15, "convertSoundToVibration":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_28

    const/16 v39, 0x1

    .line 2349
    .local v39, "useDefaultVibrate":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->haptic:I

    # invokes: Lcom/android/server/NotificationManagerService;->doesItUseHaptic(I)Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4900(Lcom/android/server/NotificationManagerService;I)Z

    move-result v40

    .line 2351
    .local v40, "useHaptic":Z
    if-nez v39, :cond_12

    if-nez v15, :cond_12

    if-nez v18, :cond_12

    if-eqz v40, :cond_14

    :cond_12
    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_14

    .line 2355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2383
    const-string v4, "STATUSBAR-NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Noti Alert - doVibrate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " convertStoV="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    if-nez v39, :cond_13

    if-eqz v15, :cond_29

    :cond_13
    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    move/from16 v0, v40

    # invokes: Lcom/android/server/NotificationManagerService;->doVibrate(ZZLandroid/app/Notification;)V
    invoke-static {v5, v4, v0, v6}, Lcom/android/server/NotificationManagerService;->access$5000(Lcom/android/server/NotificationManagerService;ZZLandroid/app/Notification;)V

    .line 2391
    .end local v12    # "audioManager":Landroid/media/AudioManager;
    .end local v15    # "convertSoundToVibration":Z
    .end local v18    # "hasCustomVibrate":Z
    .end local v19    # "hasValidSound":Z
    .end local v34    # "soundUri":Landroid/net/Uri;
    .end local v38    # "useDefaultSound":Z
    .end local v39    # "useDefaultVibrate":Z
    .end local v40    # "useHaptic":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v4

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_15

    .line 2393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2398
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    if-eqz v14, :cond_2a

    .line 2400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    .line 2408
    :cond_16
    :goto_13
    monitor-exit v42

    goto/16 :goto_2

    .end local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v16    # "currentUser":I
    .end local v23    # "index":I
    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v31    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v36    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v42
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v4

    .line 2086
    .end local v14    # "canInterrupt":Z
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 2099
    .restart local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v14    # "canInterrupt":Z
    .restart local v23    # "index":I
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v31    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_18
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v28, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2100
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2102
    if-eqz v28, :cond_5

    .line 2103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    or-int/2addr v5, v6

    iput v5, v4, Landroid/app/Notification;->flags:I

    goto/16 :goto_4

    .line 2108
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2126
    .restart local v36    # "token":J
    :catchall_1
    move-exception v4

    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2137
    .restart local v16    # "currentUser":I
    .restart local v21    # "identity":J
    :catchall_2
    move-exception v4

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2140
    .end local v21    # "identity":J
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v21

    .line 2142
    .restart local v21    # "identity":J
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2149
    :try_start_b
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :catchall_3
    move-exception v4

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2161
    :cond_1b
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v41

    .line 2162
    .local v41, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2163
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->knoxFlags:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 2164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 2165
    new-instance v26, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.ACTION_NEW_NOTIFICATION"

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2167
    .local v26, "newNotifIntent":Landroid/content/Intent;
    const-string v4, "notification"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2168
    const-string/jumbo v4, "userHandle"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$7;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2169
    const-string/jumbo v4, "userId"

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending broadcast with sbn as extra = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.ENTERPRISE_CONTAINER"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2174
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 2200
    .end local v21    # "identity":J
    .end local v26    # "newNotifIntent":Landroid/content/Intent;
    .end local v41    # "versionInfo":Landroid/os/Bundle;
    :cond_1c
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not posting notification with icon==0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    if-eqz v28, :cond_1d

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_1d

    .line 2202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v21

    .line 2204
    .restart local v21    # "identity":J
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2207
    :try_start_d
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$4700(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 2214
    .end local v21    # "identity":J
    :cond_1d
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2207
    .restart local v21    # "identity":J
    :catchall_4
    move-exception v4

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2235
    .end local v21    # "identity":J
    .restart local v12    # "audioManager":Landroid/media/AudioManager;
    :cond_1e
    const/16 v38, 0x0

    goto/16 :goto_9

    .line 2248
    .restart local v19    # "hasValidSound":Z
    .restart local v32    # "resolver":Landroid/content/ContentResolver;
    .restart local v34    # "soundUri":Landroid/net/Uri;
    .restart local v38    # "useDefaultSound":Z
    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 2250
    .end local v32    # "resolver":Landroid/content/ContentResolver;
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_f

    .line 2251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->val$notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v34, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2252
    if-eqz v34, :cond_21

    const/16 v19, 0x1

    :goto_14
    goto/16 :goto_a

    :cond_21
    const/16 v19, 0x0

    goto :goto_14

    .line 2256
    :cond_22
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 2261
    .restart local v25    # "looping":Z
    :cond_23
    const/4 v13, 0x5

    .restart local v13    # "audioStreamType":I
    goto/16 :goto_c

    .line 2303
    .restart local v21    # "identity":J
    .restart local v29    # "parameter":[Ljava/lang/Object;
    .restart local v30    # "player":Landroid/media/IRingtonePlayer;
    :catch_1
    move-exception v17

    .line 2304
    .local v17, "ex":Ljava/lang/IllegalAccessException;
    :try_start_e
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2310
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto/16 :goto_d

    .line 2325
    .end local v17    # "ex":Ljava/lang/IllegalAccessException;
    .end local v29    # "parameter":[Ljava/lang/Object;
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    :catch_2
    move-exception v4

    .line 2327
    :try_start_f
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_e

    .line 2311
    .restart local v29    # "parameter":[Ljava/lang/Object;
    .restart local v30    # "player":Landroid/media/IRingtonePlayer;
    :catch_3
    move-exception v17

    .line 2312
    .local v17, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_10
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2318
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_d

    .line 2327
    .end local v17    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v29    # "parameter":[Ljava/lang/Object;
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    :catchall_5
    move-exception v4

    :try_start_11
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2334
    .end local v13    # "audioStreamType":I
    .end local v21    # "identity":J
    .end local v25    # "looping":Z
    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_f

    .line 2338
    .restart local v18    # "hasCustomVibrate":Z
    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_10

    .line 2345
    .restart local v15    # "convertSoundToVibration":Z
    :cond_28
    const/16 v39, 0x0

    goto/16 :goto_11

    .line 2384
    .restart local v39    # "useDefaultVibrate":Z
    .restart local v40    # "useHaptic":Z
    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 2403
    .end local v12    # "audioManager":Landroid/media/AudioManager;
    .end local v15    # "convertSoundToVibration":Z
    .end local v18    # "hasCustomVibrate":Z
    .end local v19    # "hasValidSound":Z
    .end local v34    # "soundUri":Landroid/net/Uri;
    .end local v38    # "useDefaultSound":Z
    .end local v39    # "useDefaultVibrate":Z
    .end local v40    # "useHaptic":Z
    :cond_2a
    if-eqz v28, :cond_16

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_16

    .line 2405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_13
.end method
