.class Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsAnalyzer"
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_PERIOD:I = 0x2710

.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final GOOD_RX_VALID_DURATION:I = 0x493e0

.field private static final MIN_STAY_TIME_AFTER_RSSI_CHECK:I = 0x1388

.field private static final PERIODIC_DNS_CHECK_INTERVAL:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.NetworkStatsAnalyzer"


# instance fields
.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRxStats:I

.field private mDnsQueried:Z

.field private mGoodRxRate:I

.field private mGoodRxRssi:I

.field private mGoodRxTime:J

.field private mLastDnsCheckTime:J

.field private mMaybeUseStreaming:I

.field private mPollingStarted:Z

.field private mPublicDnsCheckProcess:Z

.field private mQCCancelledByScanOrDhcp:Z

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mSkipRemainingDnsResults:Z

.field private mTxBytes:J

.field private mTxPackets:J

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2676
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 2677
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2656
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    .line 2657
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    .line 2658
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    .line 2659
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    .line 2660
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    .line 2661
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    .line 2662
    const/16 v0, -0xc8

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    .line 2663
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    .line 2664
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    .line 2666
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    .line 2667
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2668
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2669
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2672
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2673
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 2674
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 2678
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.SingDnsChecker"

    invoke-direct {v0, p1, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 2679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 2680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 2681
    return-void
.end method


# virtual methods
.method checkPublicDns()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2684
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 2685
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    .line 2686
    return-void
.end method

.method getCurrentRxStats()I
    .locals 3

    .prologue
    .line 2717
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRxStats : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 2724
    .local v19, "now":J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    sparse-switch v37, :sswitch_data_0

    .line 3036
    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Ignore msg id : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_0
    :goto_0
    return-void

    .line 2726
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    .line 2727
    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    .line 2728
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    goto :goto_0

    .line 2732
    :sswitch_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_1

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mPollingStarted : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move/from16 v37, v0

    if-eqz v37, :cond_0

    .line 2735
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    move/from16 v37, v0

    if-lez v37, :cond_3

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v38, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v38

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 2738
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    move-wide/from16 v37, v0

    sub-long v37, v19, v37

    const-wide/32 v39, 0x493e0

    cmp-long v37, v37, v39

    if-gez v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 2742
    :cond_2
    const-wide/16 v37, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 2746
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v37

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v37

    sub-long v37, v19, v37

    const-wide/32 v39, 0x1b7740

    cmp-long v37, v37, v39

    if-lez v37, :cond_4

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10902(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 2752
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v28, v0

    .local v28, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v22, v0

    .line 2753
    .local v22, "preRxPkts":J
    const-string v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    .line 2754
    const-string v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    .line 2755
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v37, v0

    sub-long v4, v37, v22

    .line 2756
    .local v4, "diffRx":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v37, v0

    sub-long v8, v37, v28

    .line 2757
    .local v8, "diffTx":J
    long-to-int v0, v4

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    .line 2758
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_5

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffRx : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_6

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffTx : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v26, v0

    .local v26, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v24, v0

    .line 2762
    .local v24, "preRxbyte":J
    const-string v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    .line 2763
    const-string v37, "wlan0"

    invoke-static/range {v37 .. v37}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v37

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    .line 2764
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v37, v0

    sub-long v6, v37, v24

    .line 2765
    .local v6, "diffRxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v37, v0

    sub-long v10, v37, v26

    .line 2766
    .local v10, "diffTxBytes":J
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_7

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffRxBytes : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_7
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_8

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "diffTxBytes : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :cond_8
    const-wide/16 v37, 0x0

    cmp-long v37, v4, v37

    if-lez v37, :cond_13

    div-long v37, v6, v4

    :goto_1
    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v33, v0

    .line 2770
    .local v33, "rxBytesPerPacket":I
    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_14

    div-long v37, v10, v8

    :goto_2
    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v35, v0

    .line 2771
    .local v35, "txBytesPerPacket":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_9

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "rxBytesPerPacket : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_9
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_a

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "txBytesPerPacket : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_a
    const/16 v16, 0x0

    .line 2775
    .local v16, "needCheckByNoRx":Z
    const/16 v17, 0x0

    .line 2776
    .local v17, "needCheckByPoorRx":Z
    const/16 v18, 0x0

    .line 2778
    .local v18, "needCheckInternetIsAlive":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->trimToSize()V

    .line 2782
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    long-to-int v0, v4

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    move/from16 v37, v0

    if-eqz v37, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v37

    if-nez v37, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v37

    if-nez v37, :cond_d

    .line 2785
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 2786
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v37

    if-eqz v37, :cond_c

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "Start Rechecking Link Quality - Previous QC cancelled because (Scan / DHCP session) and QC overlapped."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 2790
    :cond_d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mMaybeUseStreaming : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v37

    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move/from16 v37, v0

    if-nez v37, :cond_12

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v21

    .line 2793
    .local v21, "ongoingId":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    move/from16 v37, v0

    if-nez v37, :cond_f

    if-lez v21, :cond_17

    .line 2794
    :cond_f
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_10

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "waiting dns responses or the quality result now!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-ltz v37, :cond_12

    const/16 v37, 0x1f4

    move/from16 v0, v33

    move/from16 v1, v37

    if-le v0, v1, :cond_12

    .line 2796
    if-lez v21, :cond_16

    .line 2797
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_11

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Good Rx!, don\'t need to keep evaluating quality! - id : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v6, v37

    if-lez v37, :cond_15

    long-to-int v0, v6

    move/from16 v31, v0

    .line 2799
    .local v31, "result":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    const v38, 0x21028

    const/16 v39, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v31

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/Message;->sendToTarget()V

    .line 2960
    .end local v21    # "ongoingId":I
    .end local v31    # "result":I
    :cond_12
    :goto_4
    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    .line 2961
    const v37, 0x21035

    const-wide/16 v38, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2769
    .end local v16    # "needCheckByNoRx":Z
    .end local v17    # "needCheckByPoorRx":Z
    .end local v18    # "needCheckInternetIsAlive":Z
    .end local v33    # "rxBytesPerPacket":I
    .end local v35    # "txBytesPerPacket":I
    :cond_13
    const-wide/16 v37, 0x0

    goto/16 :goto_1

    .line 2770
    .restart local v33    # "rxBytesPerPacket":I
    :cond_14
    const-wide/16 v37, 0x0

    goto/16 :goto_2

    .line 2798
    .restart local v16    # "needCheckByNoRx":Z
    .restart local v17    # "needCheckByPoorRx":Z
    .restart local v18    # "needCheckInternetIsAlive":Z
    .restart local v21    # "ongoingId":I
    .restart local v35    # "txBytesPerPacket":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v31

    goto :goto_3

    .line 2801
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 2802
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    .line 2803
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    goto :goto_4

    .line 2807
    :cond_17
    if-nez v18, :cond_1a

    if-nez v16, :cond_1a

    if-nez v17, :cond_1a

    const-wide/16 v37, 0x0

    cmp-long v37, v4, v37

    if-gtz v37, :cond_18

    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-wide/from16 v37, v0

    sub-long v37, v19, v37

    const-wide/32 v39, 0xea60

    cmp-long v37, v37, v39

    if-lez v37, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    .line 2810
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_19

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "PERIODIC DNS CHECK TRIGGER (SIMPLE CONNECTION TEST) - Last DNS check was "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-wide/from16 v39, v0

    sub-long v39, v19, v39

    const-wide/16 v41, 0x3e8

    div-long v39, v39, v41

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " seconds ago."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2814
    :cond_19
    const/16 v18, 0x1

    .line 2817
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1b

    .line 2818
    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    .line 2819
    const v37, 0x21035

    const-wide/16 v38, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2823
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNoRxPacketsLimit:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-lez v37, :cond_20

    .line 2824
    const-wide/16 v37, 0x56f4

    cmp-long v37, v6, v37

    if-gez v37, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-gez v37, :cond_1f

    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_1f

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    long-to-int v0, v4

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2829
    :goto_5
    const/16 v37, 0x38

    move/from16 v0, v37

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d

    const/16 v37, 0x49

    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 2830
    const-wide/16 v37, 0x64

    mul-long v37, v37, v8

    div-long v37, v37, v4

    move-wide/from16 v0, v37

    long-to-int v0, v0

    move/from16 v36, v0

    .line 2831
    .local v36, "txProportionToRx":I
    const/16 v37, 0x5a

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_1d

    const/16 v37, 0x6e

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    add-int/lit8 v37, v35, -0xa

    move/from16 v0, v37

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    move/from16 v0, v33

    move/from16 v1, v35

    if-gt v0, v1, :cond_1d

    .line 2843
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_1c

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "DNS queries and abnormal responses"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_1c
    const/16 v18, 0x1

    .line 2881
    .end local v36    # "txProportionToRx":I
    :cond_1d
    :goto_6
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_1e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mCumulativePoorRx.size : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2e

    .line 2883
    const/16 v34, 0x0

    .line 2884
    .local v34, "sum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_29

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .local v32, "rx":I
    add-int v34, v34, v32

    goto :goto_7

    .line 2827
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v32    # "rx":I
    .end local v34    # "sum":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 2848
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    move/from16 v37, v0

    if-eqz v37, :cond_26

    .line 2855
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_21

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "No [SYN,ACK] or No subsequent transaction"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_21
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_24

    .line 2857
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_22

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "suspicious No Rx state but staying in good Rx state now"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_22
    const/16 v18, 0x1

    .line 2864
    :goto_8
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2875
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_1d

    .line 2876
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_23

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "could be in No service state during streaming!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_23
    const/16 v18, 0x1

    goto/16 :goto_6

    .line 2860
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_25

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x6

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 2862
    :cond_25
    const/16 v16, 0x1

    goto :goto_8

    .line 2865
    :cond_26
    const-wide/16 v37, 0x0

    cmp-long v37, v8, v37

    if-lez v37, :cond_28

    .line 2866
    const-wide/16 v37, 0x0

    cmp-long v37, v4, v37

    if-nez v37, :cond_27

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 2869
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    long-to-int v0, v4

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2872
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 2885
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v34    # "sum":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    mul-int/lit8 v37, v37, 0x3

    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_3a

    .line 2886
    const/16 v17, 0x1

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_2a

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x9

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 2889
    :cond_2a
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    const/16 v37, 0x3

    move/from16 v0, v37

    if-ge v14, v0, :cond_2c

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v38, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_37

    .line 2891
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2b

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "It\'s hard to say poor rx"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    :cond_2b
    const/16 v17, 0x0

    .line 2896
    :cond_2c
    if-eqz v17, :cond_39

    .line 2897
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_38

    .line 2898
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2d

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "suspicious Poor Rx state but staying in good Rx state now"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_2d
    const/16 v18, 0x1

    .line 2900
    const/16 v17, 0x0

    .line 2914
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v34    # "sum":I
    :cond_2e
    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-wide/from16 v37, v0

    sub-long v37, v19, v37

    const-wide/16 v39, 0x5dc

    cmp-long v37, v37, v39

    if-lez v37, :cond_3b

    const-wide/16 v37, 0x2

    cmp-long v37, v8, v37

    if-ltz v37, :cond_3b

    const/16 v37, 0x3b

    move/from16 v0, v37

    move/from16 v1, v35

    if-gt v0, v1, :cond_3b

    const/16 v37, 0x3e

    move/from16 v0, v35

    move/from16 v1, v37

    if-gt v0, v1, :cond_3b

    .line 2916
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2f

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "SYN packets might be transmitted"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_2f
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2922
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v30, v0

    .line 2923
    .local v30, "prevStreaming":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v37, v4, v37

    if-lez v37, :cond_3c

    const/16 v37, 0x514

    move/from16 v0, v33

    move/from16 v1, v37

    if-le v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    :goto_d
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2925
    const/16 v37, 0x5

    move/from16 v0, v30

    move/from16 v1, v37

    if-lt v0, v1, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v37, v0

    if-nez v37, :cond_31

    .line 2926
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_30

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "need to check if there are problems on streaming service"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :cond_30
    const/16 v18, 0x1

    .line 2930
    :cond_31
    if-nez v17, :cond_32

    if-eqz v16, :cond_33

    .line 2931
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 2932
    const/16 v18, 0x0

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v19

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16002(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16100(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v37

    sub-long v37, v19, v37

    const-wide/16 v39, 0x1388

    cmp-long v37, v37, v39

    if-lez v37, :cond_3d

    .line 2935
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 2943
    :cond_33
    :goto_e
    if-eqz v18, :cond_12

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 2945
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    .line 2946
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14200(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/16 v39, 0xbb8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v40, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v40 .. v40}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v40

    const/16 v41, 0x0

    invoke-virtual/range {v37 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_36

    .line 2950
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v37

    if-eqz v37, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-string v38, "DNS List is empty, need to check quality"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2951
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_35

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 2953
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 2955
    :cond_36
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_4

    .line 2889
    .end local v30    # "prevStreaming":I
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v34    # "sum":I
    :cond_37
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 2902
    :cond_38
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_2e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "Cumulative Rx is in poor status!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2905
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_b

    .line 2909
    .end local v14    # "i":I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_b

    .line 2919
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v34    # "sum":I
    :cond_3b
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    goto/16 :goto_c

    .line 2923
    .restart local v30    # "prevStreaming":I
    :cond_3c
    const/16 v37, 0x0

    goto/16 :goto_d

    .line 2938
    :cond_3d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_3e

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "The interval between evaluations is too short!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    :cond_3e
    const/16 v18, 0x1

    goto/16 :goto_e

    .line 2965
    .end local v4    # "diffRx":J
    .end local v6    # "diffRxBytes":J
    .end local v8    # "diffTx":J
    .end local v10    # "diffTxBytes":J
    .end local v16    # "needCheckByNoRx":Z
    .end local v17    # "needCheckByPoorRx":Z
    .end local v18    # "needCheckInternetIsAlive":Z
    .end local v21    # "ongoingId":I
    .end local v22    # "preRxPkts":J
    .end local v24    # "preRxbyte":J
    .end local v26    # "preTxBytes":J
    .end local v28    # "preTxPkts":J
    .end local v30    # "prevStreaming":I
    .end local v33    # "rxBytesPerPacket":I
    .end local v35    # "txBytesPerPacket":I
    :sswitch_2
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    .line 2966
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2968
    const v37, 0x21035

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    .line 2969
    const-wide/16 v37, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 2971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 2973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14200(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 2974
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 2975
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 2976
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 2977
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 2978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-wide/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v37 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10902(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_0

    .line 2983
    :sswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_3f

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v37 .. v40}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v12

    .line 2985
    .local v12, "dns2Result":I
    const/16 v37, 0x2

    move/from16 v0, v37

    if-ne v12, v0, :cond_40

    .line 2986
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_0

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v38, "wait until the responses about remained DNS Request arrive!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2990
    :cond_40
    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v12, v0, :cond_42

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2995
    :goto_f
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_41

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mPublicDnsAvailable : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v39, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v39 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_41
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    .line 2993
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_f

    .line 3000
    .end local v12    # "dns2Result":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v37 .. v40}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v13

    .line 3001
    .local v13, "dnsResult":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move/from16 v37, v0

    if-eqz v37, :cond_46

    .line 3002
    const/16 v37, 0x2

    move/from16 v0, v37

    if-eq v13, v0, :cond_0

    .line 3003
    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v13, v0, :cond_44

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3012
    :goto_10
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_43

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mPublicDnsAvailable : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v39, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v39 .. v39}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_43
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    .line 3005
    :cond_44
    const/16 v37, 0x4

    move/from16 v0, v37

    if-ne v13, v0, :cond_45

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/16 v39, 0xbb8

    const/16 v40, 0x1

    const-string v41, "www.google.com"

    invoke-virtual/range {v37 .. v41}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 3010
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_10

    .line 3016
    :cond_46
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v37

    if-eqz v37, :cond_47

    const-string v37, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[DNS_PING_RESULT] skip : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    .line 3018
    const/16 v37, 0x2

    move/from16 v0, v37

    if-eq v13, v0, :cond_0

    .line 3019
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 3020
    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v13, v0, :cond_48

    .line 3021
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    .line 3023
    :cond_48
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v37

    if-eqz v37, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    const-string v38, "single DNS Checking FAILURE"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3024
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v19

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16002(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 3025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v37

    if-nez v37, :cond_4a

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 3027
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    .line 2724
    nop

    :sswitch_data_0
    .sparse-switch
        0x21033 -> :sswitch_0
        0x21034 -> :sswitch_2
        0x21035 -> :sswitch_1
        0x50000 -> :sswitch_4
        0x50005 -> :sswitch_3
    .end sparse-switch
.end method

.method restartQCCancelledByScanOrDhcp()V
    .locals 1

    .prologue
    .line 2693
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 2694
    return-void
.end method

.method setGoodRxStateNow(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 2697
    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 2699
    iput-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    .line 2700
    const/16 v0, -0xc8

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    .line 2701
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    .line 2702
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "lose Good Rx status."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_0
    :goto_0
    return-void

    .line 2705
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 2709
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    .line 2710
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    .line 2712
    :cond_3
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    .line 2713
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "obtain Good Rx status [rssi : %ddbm, rate : %dMbps]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateLastDnsCheckTime()V
    .locals 2

    .prologue
    .line 2689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 2690
    return-void
.end method
