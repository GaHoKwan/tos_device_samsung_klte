.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteConnection$1;

    .prologue
    .line 1512
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 7
    .param p1, "cookie"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1591
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1592
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_1

    .line 1593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1594
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1595
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v3, :cond_0

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1598
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1595
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1598
    goto :goto_0
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    .prologue
    .line 1617
    and-int/lit16 v0, p1, 0xff

    .line 1618
    .local v0, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    .line 1619
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_0
    return-object v1

    .restart local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1602
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1603
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1604
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1605
    if-eqz p2, :cond_0

    .line 1606
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :cond_0
    const-string v2, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1612
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1613
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1522
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1523
    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v2, v4, 0x14

    .line 1524
    .local v2, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v2

    .line 1525
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v3, :cond_1

    .line 1526
    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$1;)V

    .line 1527
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v3, v4, v2

    .line 1535
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1536
    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1537
    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1538
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    .line 1539
    if-eqz p3, :cond_4

    .line 1540
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 1541
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1545
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_4

    .line 1546
    aget-object v0, p3, v1

    .line 1547
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v4, v0, [B

    if-eqz v4, :cond_3

    .line 1549
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    # getter for: Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$500()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1529
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1530
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1531
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1532
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1558
    .end local v2    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1543
    .restart local v2    # "index":I
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_2
    :try_start_1
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1551
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1555
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v4

    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1556
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1557
    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1623
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    .line 1624
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v2, v4

    .line 1625
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1627
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    .line 1630
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 1631
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1635
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1636
    :try_start_0
    const-string v4, "  Most recently executed operations:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1637
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1638
    .local v0, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1639
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_3

    .line 1640
    const/4 v2, 0x0

    .line 1642
    .local v2, "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1643
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    # invokes: Landroid/database/sqlite/SQLiteConnection$Operation;->getFormattedStartTime()Ljava/lang/String;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->access$600(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Pid:("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1648
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1650
    if-lez v0, :cond_2

    .line 1651
    add-int/lit8 v0, v0, -0x1

    .line 1655
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 1656
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1657
    if-eqz v3, :cond_1

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    .line 1661
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_1
    :goto_1
    monitor-exit v5

    .line 1662
    return-void

    .line 1653
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "n":I
    :cond_2
    const/16 v0, 0x13

    goto :goto_0

    .line 1659
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_3
    const-string v4, "    <none>"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1661
    .end local v0    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    .prologue
    .line 1571
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1572
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1575
    :cond_0
    monitor-exit v1

    .line 1576
    return-void

    .line 1575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    .prologue
    .line 1579
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1580
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1562
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v2

    .line 1563
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1564
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    .line 1565
    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1567
    :cond_0
    monitor-exit v2

    .line 1568
    return-void

    .line 1567
    .end local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1585
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1586
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1587
    monitor-exit v1

    .line 1588
    return-void

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
