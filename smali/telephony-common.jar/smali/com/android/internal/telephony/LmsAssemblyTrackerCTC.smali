.class public Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;
.super Landroid/os/Handler;
.source "LmsAssemblyTrackerCTC.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final EVENT_FIRST_DISPLAY_TIMEOUT:I = 0x1

.field private static final EVENT_MAXIMAL_CONNECTION_TIMEOUT:I = 0x2

.field private static final MAXIMAL_CONNECTION_TIME_ALARM_ACTION:Ljava/lang/String; = "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

.field private static final RAW_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LmsAssemblyTrackerCTC"


# instance fields
.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

.field private mIsAlarmReceiverActive:Z

.field private final mQueuedLmsTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telephony/LmsTokenCTC;",
            "Landroid/telephony/LmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    .line 51
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smshandler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    .line 66
    new-instance v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;-><init>(Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    .line 80
    return-void
.end method

.method private static dbSelectionForLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/util/Pair;
    .locals 4
    .param p0, "lmsToken"    # Landroid/telephony/LmsTokenCTC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/LmsTokenCTC;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    const-string v0, "address = ? AND reference_number = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private deleteStoredMessageParts(Landroid/telephony/LmsTokenCTC;)V
    .locals 5
    .param p1, "lmsToken"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dbSelectionForLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/util/Pair;

    move-result-object v0

    .line 341
    .local v0, "selection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method private dispatchIncompleteLms(Landroid/telephony/LmsTokenCTC;I)V
    .locals 8
    .param p1, "lmsToken"    # Landroid/telephony/LmsTokenCTC;
    .param p2, "lmsStatus"    # I

    .prologue
    const/4 v7, 0x0

    .line 250
    const-string v3, "dispatchIncompleteLms, lmsToken=%s, lmsStatus=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Landroid/telephony/LmsTokenCTC;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 254
    const-string v3, "LmsAssemblyTrackerCTC"

    const-string v4, "dispatchIncompleteLms: cursor is NULL"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;

    iget v3, p1, Landroid/telephony/LmsTokenCTC;->msgCount:I

    invoke-direct {v0, v3, v7}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;-><init>(IZ)V

    .line 261
    .local v0, "collector":Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;
    :try_start_0
    const-string v3, "sequence"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pdu"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "destination_port"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->addAllFromCursor(Landroid/database/Cursor;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    const-string v3, "LmsAssemblyTrackerCTC"

    const-string v4, "dispatchIncompleteLms: no parts stored"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    .line 276
    :cond_1
    const/high16 v2, 0x10000

    .line 278
    .local v2, "destPort":I
    const-string v3, "3gpp2"

    iget-object v4, p1, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    .line 284
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->getDestPort()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 285
    const-string v3, "LmsAssemblyTrackerCTC"

    const-string v4, "dispatchIncompleteLms: ignoring partial dispatch request for port-addressed LMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_2
    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    goto :goto_1

    .line 289
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mInboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->getPdusSequence()[[B

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusCTC([[BLandroid/telephony/LmsTokenCTC;I)V

    goto :goto_0
.end method

.method private findStoredMessagePartsOlderThan(J)Ljava/util/Set;
    .locals 8
    .param p1, "maxTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Landroid/telephony/LmsTokenCTC;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 297
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 299
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/LmsTokenCTC;>;"
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v2, v6

    const-string v3, "reference_number"

    aput-object v3, v2, v4

    const-string v3, "count"

    aput-object v3, v2, v5

    const-string v3, "format"

    aput-object v3, v2, v7

    const-string v3, "date <= ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "date ASC"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 306
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 307
    const-string v2, "LmsAssemblyTrackerCTC"

    const-string v3, "findStoredMessagePartsOlderThan, cursor is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-object v1

    .line 312
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    new-instance v2, Landroid/telephony/LmsTokenCTC;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/telephony/LmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getFirstDisplayTimeoutDuration(I)J
    .locals 3
    .param p0, "msgCount"    # I

    .prologue
    .line 84
    add-int/lit8 v2, p0, -0x1

    mul-int/lit8 v2, v2, 0x14

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 85
    .local v0, "defaultValue":J
    sget-boolean v2, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "debug.lms_assemble_timeout_1st"

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getSystemPropertyAsLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 88
    .end local v0    # "defaultValue":J
    :cond_0
    return-wide v0
.end method

.method private static getMaximalTimeoutDuration()J
    .locals 5

    .prologue
    const-wide/32 v2, 0x2932e00

    .line 93
    const-wide/32 v0, 0x2932e00

    .line 94
    .local v0, "defaultValue":J
    sget-boolean v4, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 95
    const-string v4, "debug.lms_assemble_timeout_max"

    invoke-static {v4, v2, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getSystemPropertyAsLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 97
    :cond_0
    return-wide v2
.end method

.method private getOrCreateLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/telephony/LmsTokenCTC;
    .locals 2
    .param p1, "lmsTokenCopy"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/telephony/LmsTokenCTC;

    move-result-object v0

    .line 366
    .local v0, "result":Landroid/telephony/LmsTokenCTC;
    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/telephony/LmsTokenCTC;

    .end local v0    # "result":Landroid/telephony/LmsTokenCTC;
    invoke-direct {v0, p1}, Landroid/telephony/LmsTokenCTC;-><init>(Landroid/telephony/LmsTokenCTC;)V

    .line 368
    .restart local v0    # "result":Landroid/telephony/LmsTokenCTC;
    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    return-object v0
.end method

.method private getQueuedLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/telephony/LmsTokenCTC;
    .locals 1
    .param p1, "lmsTokenCopy"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/LmsTokenCTC;

    return-object v0
.end method

.method private static getSystemPropertyAsLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 103
    :try_start_0
    const-string v1, ""

    invoke-static {p0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 105
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 104
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V
    .locals 4
    .param p1, "lmsToken"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    const/4 v3, 0x1

    .line 129
    const-string v0, "handleFirstDisplayTimeout, lmsToken=%s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->cancelFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V

    .line 131
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchIncompleteLms(Landroid/telephony/LmsTokenCTC;I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    .line 133
    return-void
.end method

.method private handleMaximalConnectionTimeout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 136
    const-string v3, "handleMaximalConnectionTimeout"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getMaximalTimeoutDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->findStoredMessagePartsOlderThan(J)Ljava/util/Set;

    move-result-object v2

    .line 143
    .local v2, "timedOutLms":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/LmsTokenCTC;>;"
    const-string v3, "handleMaximalConnectionTimeout: timed out lms: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/LmsTokenCTC;

    .line 147
    .local v1, "lmsToken":Landroid/telephony/LmsTokenCTC;
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dispatchIncompleteLms(Landroid/telephony/LmsTokenCTC;I)V

    .line 148
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->deleteStoredMessageParts(Landroid/telephony/LmsTokenCTC;)V

    goto :goto_0

    .line 152
    .end local v1    # "lmsToken":Landroid/telephony/LmsTokenCTC;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    .line 153
    return-void
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 379
    sget-boolean v0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "LmsAssemblyTrackerCTC"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    return-void
.end method

.method private queryStoredMessageParts([Ljava/lang/String;Landroid/telephony/LmsTokenCTC;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "lmsToken"    # Landroid/telephony/LmsTokenCTC;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->dbSelectionForLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/util/Pair;

    move-result-object v6

    .line 336
    .local v6, "selection":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->RAW_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private registerAlarmReceiver()V
    .locals 3

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    goto :goto_0
.end method

.method private removeQueuedLmsToken(Landroid/telephony/LmsTokenCTC;)V
    .locals 1
    .param p1, "lmsTokenCopy"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mQueuedLmsTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method private unregisterAlarmReceiver()V
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V
    .locals 5
    .param p1, "lmsToken"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    const/4 v4, 0x1

    .line 166
    const-string v1, "cancelFirstDisplayTimeout, lmsToken=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/telephony/LmsTokenCTC;

    move-result-object v0

    .line 168
    .local v0, "queuedToken":Landroid/telephony/LmsTokenCTC;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->removeQueuedLmsToken(Landroid/telephony/LmsTokenCTC;)V

    .line 172
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/LmsTokenCTC;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "LmsAssemblyTrackerCTC"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->handleMaximalConnectionTimeout()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasScheduledFirstDisplayTimeout()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public hasScheduledFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)Z
    .locals 3
    .param p1, "lmsToken"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getQueuedLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/telephony/LmsTokenCTC;

    move-result-object v0

    .line 176
    .local v0, "queuedToken":Landroid/telephony/LmsTokenCTC;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMaximalConnectionTimeAlarmActive()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mIsAlarmReceiverActive:Z

    return v0
.end method

.method public scheduleFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V
    .locals 8
    .param p1, "lmsToken"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    const/4 v7, 0x1

    .line 158
    const-string v4, "scheduleFirstDisplayTimeout, lmsToken=%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getOrCreateLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/telephony/LmsTokenCTC;

    move-result-object v1

    .line 160
    .local v1, "queuedToken":Landroid/telephony/LmsTokenCTC;
    iget v4, p1, Landroid/telephony/LmsTokenCTC;->msgCount:I

    invoke-static {v4}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getFirstDisplayTimeoutDuration(I)J

    move-result-wide v2

    .line 161
    .local v2, "timeout":J
    invoke-virtual {p0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    return-void
.end method

.method public updateMaximalConnectionTimeAlarm()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 187
    const-string v5, "updateMaximalConnectionTimeAlarm"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "date"

    aput-object v6, v5, v10

    const-string v6, "date ASC"

    invoke-direct {p0, v5, v7, v7, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->queryStoredMessageParts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 190
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 191
    const-string v5, "LmsAssemblyTrackerCTC"

    const-string v6, "updateMaximalConnectionTimeAlarm: cursor is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v4, 0x0

    .line 197
    .local v4, "triggerAtTime":Ljava/lang/Long;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->getMaximalTimeoutDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 204
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 207
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.telephony.CTC_LMS_CONNECTION_ALARM"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    const/high16 v6, 0x10000000

    invoke-static {v5, v10, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 210
    .local v3, "operation":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 211
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v4, :cond_2

    .line 212
    const-string v5, "updateMaximalConnectionTimeAlarm: set alarm at %s"

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->registerAlarmReceiver()V

    .line 214
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v11, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 204
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "operation":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 216
    .restart local v0    # "am":Landroid/app/AlarmManager;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "operation":Landroid/app/PendingIntent;
    :cond_2
    const-string v5, "updateMaximalConnectionTimeAlarm: no alarm needed"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->unregisterAlarmReceiver()V

    .line 218
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
