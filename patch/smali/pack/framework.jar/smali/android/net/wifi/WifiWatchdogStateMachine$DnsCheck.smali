.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheck"
.end annotation


# static fields
.field public static final DNS_CHECK_RESULT_FAILURE:I = 0x0

.field public static final DNS_CHECK_RESULT_NO_INTERNET:I = 0x3

.field public static final DNS_CHECK_RESULT_PRIVATE_IP:I = 0x4

.field public static final DNS_CHECK_RESULT_REMAINED:I = 0x2

.field public static final DNS_CHECK_RESULT_SUCCESS:I = 0x1


# instance fields
.field private mDnsCheckSuccesses:[I

.field private mDnsCheckTAG:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsPinger:Landroid/net/DnsPinger;

.field private mDnsResponseStrs:[Ljava/lang/String;

.field private mIdDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 1289
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    .line 1283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    .line 1290
    new-instance v0, Landroid/net/DnsPinger;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v5, 0x1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    .line 1293
    iput-object p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    .line 1294
    return-void
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    .prologue
    .line 1273
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    return-object v0
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 1460
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clear] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-virtual {v0}, Landroid/net/DnsPinger;->clear()V

    .line 1462
    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1465
    const-string v3, ""

    .line 1466
    .local v3, "logStr":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1467
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1468
    .local v4, "respStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1470
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "respStr":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public checkDnsResult(III)I
    .locals 9
    .param p1, "pingID"    # I
    .param p2, "pingResponseTime"    # I
    .param p3, "minDnsResponse"    # I

    .prologue
    .line 1362
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1363
    .local v0, "dnsServerId":Ljava/lang/Integer;
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v6, 0x1

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 1365
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RESPONSE] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_0
    if-nez v0, :cond_2

    .line 1368
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip a Dns response with ID - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1369
    :cond_1
    const/4 v5, 0x2

    .line 1450
    :goto_0
    return v5

    .line 1372
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckSuccesses:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckSuccesses:[I

    array-length v5, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 1373
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v6, "Not available to check dns results"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1374
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v6, 0x5

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1375
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1376
    const/4 v5, 0x0

    goto :goto_0

    .line 1379
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    if-ltz p2, :cond_5

    .line 1381
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 1382
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDnsCheckSuccesses["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1385
    :cond_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1386
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 1387
    if-ltz p2, :cond_8

    .line 1388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v8, v6, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "|"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    .line 1405
    :cond_6
    :goto_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    if-lt v5, p3, :cond_b

    .line 1406
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1407
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 1408
    const/4 v5, 0x2

    if-ne p2, v5, :cond_a

    .line 1409
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1410
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1411
    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1390
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v8, v6, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "|x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    goto :goto_1

    .line 1393
    :cond_9
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v6, "mDnsResponseStrs is null"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 1413
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1416
    :cond_b
    const/4 v5, -0x3

    if-ne p2, v5, :cond_14

    .line 1417
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v4, "removePingIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1419
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_e

    .line 1420
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDnsResult - Ping# "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to DnsServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (removed)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1421
    :cond_d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1423
    :cond_e
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDnsResult - Ping# "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to DnsServer# "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 1426
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1427
    .local v3, "removeId":Ljava/lang/Integer;
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1429
    .end local v3    # "removeId":Ljava/lang/Integer;
    :cond_10
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1430
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v6, "DNS gets no results"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1431
    :cond_11
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  FAILURE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1432
    :cond_12
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 1433
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v6, 0x3

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1434
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1435
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1437
    :cond_13
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1440
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "removePingIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1441
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v6, "DNS Checking FAILURE"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1442
    :cond_15
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  FAILURE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1443
    :cond_16
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 1444
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v6, 0x7

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1445
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1446
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    .line 1447
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1450
    :cond_17
    const/4 v5, 0x2

    goto/16 :goto_0
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 1454
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[quit] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1456
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1457
    return-void
.end method

.method public requestDnsQuerying(IIZLjava/lang/String;)Z
    .locals 11
    .param p1, "num"    # I
    .param p2, "timeoutMS"    # I
    .param p3, "usePublicDns"    # Z
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1297
    const/4 v5, 0x0

    .line 1298
    .local v5, "requested":Z
    if-eqz p3, :cond_1

    .line 1299
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    .line 1311
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    const-string v7, "8.8.8.8"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    const-string v7, "8.8.4.4"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1327
    .local v4, "numDnses":I
    new-array v6, v4, [I

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckSuccesses:[I

    .line 1328
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    .line 1329
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 1330
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v2

    .line 1329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1314
    .end local v2    # "i":I
    .end local v4    # "numDnses":I
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    .line 1315
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1316
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 1317
    .local v0, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1318
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 1321
    .end local v0    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1322
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1332
    .restart local v2    # "i":I
    .restart local v4    # "numDnses":I
    :cond_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "Pinging %s on ssid [%s]: "

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    aput-object v10, v9, v6

    const/4 v10, 0x1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    :goto_2
    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1334
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1335
    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_9

    .line 1336
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-ge v3, v4, :cond_7

    .line 1338
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1339
    if-nez p4, :cond_6

    .line 1340
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    mul-int/lit8 v9, v2, 0x0

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v6, p2, v9}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    :goto_5
    const/4 v5, 0x1

    .line 1336
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1332
    .end local v3    # "j":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 1343
    .restart local v3    # "j":I
    :cond_6
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    mul-int/lit8 v9, v2, 0x0

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v6, p2, v9, p4}, Landroid/net/DnsPinger;->pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1350
    :catch_0
    move-exception v1

    .line 1351
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "IndexOutOfBoundsException"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1348
    :cond_8
    :try_start_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loopback address (::1) is detected at DNS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 1357
    .end local v3    # "j":I
    :cond_9
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[REQUEST] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_a
    return v5
.end method
