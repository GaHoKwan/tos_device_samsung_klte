.class Lcom/android/server/power/ShutdownThread$Slog;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Slog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static delayDumpRaunnable:Ljava/lang/Runnable;

.field private static delayLogLooper:Landroid/os/HandlerThread;

.field private static handler:Lcom/android/server/power/ShutdownThread$Slog;

.field private static handlerLock:Ljava/lang/Object;

.field private static lastLog:Ljava/lang/String;

.field private static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

.field private static queuePoint:I

.field private static queueState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1536
    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    .line 1537
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    .line 1539
    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    .line 1540
    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "l"    # Landroid/os/Looper;

    .prologue
    .line 1547
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1548
    return-void
.end method

.method static synthetic access$1202(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 1534
    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static cancelHandler()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1615
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    .line 1616
    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    .line 1617
    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    .line 1618
    return-void
.end method

.method public static closeLogFileWriter()V
    .locals 3

    .prologue
    .line 1660
    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_0

    .line 1664
    const-string v0, "ShutdownDelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logFileWriter saveAndClose logFileWriter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const-string v0, "ShutdownDelay"

    const-string v1, "logFileWriter saveAndClose"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->saveAndClose()V

    .line 1667
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1756
    const/4 v1, -0x1

    .line 1758
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1759
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :goto_0
    return v1

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1701
    const/4 v1, -0x1

    .line 1703
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1704
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    :goto_0
    return v1

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1712
    const/4 v1, -0x1

    .line 1714
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 1715
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    :goto_0
    return v1

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1723
    const/4 v1, -0x1

    .line 1725
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1726
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    :goto_0
    return v1

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onview(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 1672
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1673
    .local v1, "returnValue":I
    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1600()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v1

    .line 1676
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1678
    .local v0, "oCalendar":Ljava/util/Calendar;
    const-string v3, "%02d-%02d %02d:%02d:%02d : %s\n"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1600()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog;->appendTextLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openLogFileWriter()V
    .locals 3

    .prologue
    .line 1650
    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1653
    :cond_1
    const-string v0, "ShutdownDelay"

    const-string v1, "Shutdown logFileWriter start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v1, "/data/log/"

    const-string/jumbo v2, "shutdown_profile"

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1565
    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1566
    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_1

    .line 1567
    :cond_0
    monitor-exit v3

    .line 1602
    :goto_0
    return-void

    .line 1569
    :cond_1
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1570
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v4, 0x1

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1571
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    const-string v2, "ShutdownDelay"

    const-string v3, "duplicate log string."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1577
    :cond_2
    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@delay, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1583
    .local v0, "oCalendar":Ljava/util/Calendar;
    const-string v2, "%02d-%02d %02d:%02d:%02d : "

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v2, :cond_3

    .line 1591
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v3, "ShutdownThread"

    invoke-virtual {v2, v3, p0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 1595
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    :goto_1
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v3, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1601
    sget v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v2, v3

    sput v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    goto/16 :goto_0

    .line 1597
    :cond_4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static startState()V
    .locals 4

    .prologue
    .line 1621
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1622
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ShutdownDelay"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    .line 1623
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1625
    :cond_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v0, :cond_1

    .line 1626
    const-string v0, "ShutdownDelay"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    .line 1628
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    .line 1629
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    .line 1633
    :goto_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1634
    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Slog$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    .line 1646
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1647
    return-void

    .line 1631
    :cond_1
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stopState()V
    .locals 3

    .prologue
    .line 1605
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    const-string v0, "ShutdownDelay"

    const-string v1, "no more delay message"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1609
    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1610
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1611
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1690
    const/4 v1, -0x1

    .line 1692
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1693
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :goto_0
    return v1

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1734
    const/4 v1, -0x1

    .line 1736
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1737
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_0
    return v1

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1745
    const/4 v1, -0x1

    .line 1747
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 1748
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    :goto_0
    return v1

    .line 1749
    :catch_0
    move-exception v0

    .line 1750
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1552
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v1, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1556
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 1557
    const-string v1, "ShutdownDelay"

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v3, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_2
    sget v1, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    .line 1555
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1560
    :cond_3
    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
