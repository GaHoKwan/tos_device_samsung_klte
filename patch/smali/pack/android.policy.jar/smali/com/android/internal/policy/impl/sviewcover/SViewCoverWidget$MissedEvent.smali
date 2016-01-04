.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedEvent"
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallMsgView:Landroid/view/View;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    const-string v1, "com.android.phone"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->CALL_PKG:Ljava/lang/String;

    .line 270
    const-string v1, "com.android.mms"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    .line 271
    const-string v1, "com.android.email"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->EMAIL_PKG:Ljava/lang/String;

    .line 277
    const/16 v1, 0x12c2

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MISSED_EVENT_UPDATE:I

    .line 278
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_CALL_EMAIL:I

    .line 279
    const/16 v1, 0x7b

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_MSG:I

    .line 281
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 282
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 292
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MissedEvent ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I
    .locals 5
    .param p1, "mode"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 400
    .local v0, "mNM":Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_4

    .line 404
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 411
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    .line 412
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 405
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_5

    .line 406
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 407
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 408
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 415
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 416
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 417
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 352
    return-void
.end method

.method private updateMissedEvent()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/16 v5, 0x3e7

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "nCallCount":I
    const/4 v3, 0x0

    .line 357
    .local v3, "nMsgCount":I
    const/4 v0, 0x0

    .line 358
    .local v0, "bUpdatedCallCount":Z
    const/4 v1, 0x0

    .line 360
    .local v1, "bUpdatedMsgCount":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I

    move-result v2

    .line 364
    if-le v2, v5, :cond_4

    .line 365
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 369
    :goto_1
    sget-object v4, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$NotiMode;)I

    move-result v3

    .line 370
    if-le v3, v5, :cond_5

    .line 371
    iput v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 375
    :goto_2
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-nez v4, :cond_6

    .line 382
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :goto_3
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-nez v4, :cond_7

    .line 388
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getCallMsgTTSMessage()V

    goto/16 :goto_0

    .line 367
    :cond_4
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    goto/16 :goto_1

    .line 373
    :cond_5
    iput v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    goto/16 :goto_2

    .line 384
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 390
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .locals 9

    .prologue
    const v8, 0x1040a56

    const v7, 0x1040a55

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 424
    const-string v0, ""

    .line 425
    .local v0, "TTSMessage":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040a57

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 444
    :goto_0
    return-void

    .line 429
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-le v1, v5, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 432
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-le v1, v5, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-ne v1, v5, :cond_3

    .line 436
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040a53

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 438
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-ne v1, v5, :cond_4

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040a54

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    const v2, 0x1040a52

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 337
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 344
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 347
    iput-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 348
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 328
    const v0, 0x10203ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 329
    const v0, 0x10203ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 330
    const v0, 0x10203ab

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallMsgView:Landroid/view/View;

    .line 331
    return-void
.end method
