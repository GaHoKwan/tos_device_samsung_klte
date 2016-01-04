.class Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mCheckAgainDefaultURL:Z

.field private mFirstDnsRequest:Z

.field private mPreviousBSSID:Ljava/lang/String;

.field private mRecoveryCanceledByScan:Z

.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3651
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3654
    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    .line 3655
    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    .line 3656
    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    .line 3657
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const v6, 0x2100b

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3661
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3662
    :cond_0
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    .line 3663
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8902(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3666
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    .line 3669
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_7

    .line 3671
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v1, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 3691
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3692
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/16 v4, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v1, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11002(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 3694
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 3699
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    .line 3700
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3701
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 3702
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    .line 3703
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3704
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v4

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 3707
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3708
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_a

    move v1, v2

    :goto_0
    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v4, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3711
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3712
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13402(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 3713
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3714
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3719
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3720
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3721
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v4, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3722
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3773
    :cond_6
    :goto_1
    return-void

    .line 3672
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-eq v1, v8, :cond_2

    .line 3673
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v1, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 3675
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3676
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3677
    .local v0, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3678
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const-string v2, "enableHIPRI"

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 3681
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "[VerifyingLinkState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3682
    :cond_8
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3685
    .end local v0    # "mobileInfo":Landroid/net/NetworkInfo;
    :cond_9
    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3686
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v2, v6, v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    :cond_a
    move v1, v3

    .line 3708
    goto/16 :goto_0

    .line 3724
    :cond_b
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3725
    :cond_c
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->isUsingStaticIp()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3726
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3728
    :cond_d
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_e

    .line 3729
    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3730
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 3731
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v2, v6, v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3733
    :cond_e
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    .line 3734
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v1

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/16 v5, 0xbb8

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3735
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v4, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3736
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 3737
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v7, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 3738
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3739
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3740
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v3, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .line 3746
    :cond_f
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3747
    :cond_10
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3748
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3749
    :cond_11
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v4, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3750
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .line 3752
    :cond_12
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_13

    .line 3753
    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3754
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 3755
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v2, v6, v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3758
    :cond_13
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3759
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3760
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 3762
    :cond_14
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3777
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3778
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    .line 3779
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x21014

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3780
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 3781
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14300(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 3782
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3786
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 4322
    const/4 v12, 0x0

    .line 4324
    :goto_0
    return v12

    .line 3788
    :sswitch_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 3789
    .local v3, "id":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 3791
    .local v8, "result":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x4

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 3792
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_0

    .line 3793
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 3794
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v13, 0xb

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 3796
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    :cond_1
    const/4 v12, -0x1

    if-ne v8, v12, :cond_2

    .line 3798
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3919
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 3920
    const/4 v12, 0x1

    goto :goto_0

    .line 3799
    :cond_2
    const/4 v12, 0x1

    if-ne v8, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_6

    .line 3801
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3802
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 3803
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    .line 3805
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3807
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    .line 3808
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "could not identify a captive portal state due to the poor quality"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3809
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3810
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3813
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3822
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    if-lt v8, v12, :cond_a

    .line 3823
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Passed by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mPassBytesVerifyingState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    .line 3825
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    if-lt v8, v12, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3826
    .local v5, "now":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 3827
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3829
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_9

    .line 3830
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .line 3825
    .end local v5    # "now":J
    :cond_8
    const-wide/16 v5, 0x0

    goto :goto_2

    .line 3832
    .restart local v5    # "now":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .line 3843
    .end local v5    # "now":J
    :cond_a
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "WifiWatchdogStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mPassBytesVerifyingState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    if-ge v3, v12, :cond_d

    .line 3846
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    .line 3847
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    .line 3851
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3852
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3853
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8902(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3854
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    add-int/lit8 v13, v3, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 3855
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3857
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    if-eqz v12, :cond_e

    .line 3862
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    .line 3863
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3864
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setToDefaultURL()V

    .line 3865
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3866
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3867
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8902(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3868
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 3869
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3871
    :cond_e
    if-nez v8, :cond_11

    .line 3873
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3874
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 3875
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    .line 3877
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3879
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_10

    .line 3880
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3881
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3882
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3885
    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3896
    :cond_11
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3897
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 3898
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    .line 3900
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3902
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_13

    .line 3903
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3904
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3905
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3908
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3923
    .end local v3    # "id":I
    .end local v8    # "result":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3924
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 3929
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 3931
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$6700(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V

    .line 3934
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$6800(Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    .line 3935
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 4324
    :cond_15
    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3941
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v2

    .line 3942
    .local v2, "dnsResult":I
    const/4 v7, 0x2

    .line 3943
    .local v7, "poorType":I
    const/4 v12, 0x2

    if-eq v2, v12, :cond_15

    .line 3944
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3945
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 3946
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3948
    :cond_16
    const/4 v12, 0x1

    if-ne v2, v12, :cond_19

    .line 3949
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3950
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 3951
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_17

    .line 3952
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 3953
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 3957
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16402(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3958
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_3

    .line 3955
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_4

    .line 3961
    :cond_19
    const/4 v12, 0x4

    if-ne v2, v12, :cond_1c

    .line 3962
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    const/4 v13, 0x1

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    const-string/jumbo v16, "www.google.com"

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 3964
    const/4 v7, 0x3

    .line 3986
    :cond_1a
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3987
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3990
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 3991
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_1b

    .line 3992
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    .line 3994
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3996
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_15

    .line 3997
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 3998
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 3968
    :cond_1c
    const/4 v12, 0x3

    if-ne v2, v12, :cond_1d

    .line 3969
    const/4 v7, 0x3

    goto/16 :goto_5

    .line 3971
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    if-eqz v12, :cond_1a

    .line 3972
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    .line 3973
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21013

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3974
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v13

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 3975
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3976
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 3977
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 3978
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 3979
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3980
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4009
    .end local v2    # "dnsResult":I
    .end local v7    # "poorType":I
    :sswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_1e

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v1

    .line 4011
    .local v1, "dns2Result":I
    const/4 v12, 0x2

    if-ne v1, v12, :cond_1f

    .line 4012
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4016
    :cond_1f
    const/4 v12, 0x4

    if-ne v1, v12, :cond_20

    .line 4017
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 4018
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 4019
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4021
    :cond_20
    const/4 v12, 0x1

    if-ne v1, v12, :cond_23

    .line 4022
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16402(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4023
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4024
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 4025
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_21

    .line 4026
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 4027
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4031
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_3

    .line 4029
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_6

    .line 4033
    :cond_23
    const/4 v12, 0x3

    if-ne v1, v12, :cond_24

    .line 4034
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 4035
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 4036
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4039
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 4040
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 4041
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 4042
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 4047
    .end local v1    # "dns2Result":I
    :sswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_3

    .line 4049
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4050
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_25

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_NONE]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_27

    .line 4052
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_26

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "It\'s a auto join AP"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4056
    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 4058
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 4059
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4060
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_28

    .line 4061
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 4062
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    .line 4064
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4069
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4070
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_2a

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_DETECTED]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xb

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 4072
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 4073
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_2b

    .line 4074
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 4075
    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    .line 4077
    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 4078
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 4083
    :pswitch_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_2d

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_TIMEOUT]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4085
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xb

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 4086
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_30

    .line 4088
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2f

    .line 4090
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 4091
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_2e

    .line 4092
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    .line 4094
    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 4097
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4098
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v13, 0x9

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 4099
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v13, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v14, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 4100
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 4101
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 4113
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 4111
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_7

    .line 4117
    :pswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_31

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[CAPTIVE_PORTAL_RESULT_NO_INTERNET]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_31
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_32

    .line 4119
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x3

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4120
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v13, 0x9

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 4121
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xb

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 4125
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_33

    .line 4126
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4127
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 4128
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 4129
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 4139
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 4123
    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_8

    .line 4131
    :cond_33
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_34

    .line 4132
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4137
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_9

    .line 4134
    :cond_34
    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "DNS - Passed, Captive Portal - No Internet"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_a

    .line 4147
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 4148
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 4153
    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v13

    if-ne v12, v13, :cond_15

    .line 4154
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x25014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4155
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19800()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_3

    .line 4161
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/RssiPacketCountInfo;

    .line 4162
    .local v4, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v9, v4, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 4163
    .local v9, "rssi":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_35

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fetch RSSI succeed, rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$19900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4164
    :cond_35
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_36

    .line 4165
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4168
    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20000(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v12, v14

    .line 4171
    .local v10, "time":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_3a

    .line 4173
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "Max avoid time elapsed"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4175
    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_39

    .line 4176
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 4177
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x7530

    add-long/2addr v13, v15

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20002(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4178
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    .line 4182
    :goto_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2100b

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4183
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto/16 :goto_3

    .line 4180
    :cond_38
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_b

    .line 4186
    :cond_39
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4191
    :cond_3a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20300(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v12

    if-lt v9, v12, :cond_3e

    .line 4192
    move-object/from16 v0, p0

    iget v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20400(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v13

    if-lt v12, v13, :cond_15

    .line 4194
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_3b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Good link detected, rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4195
    :cond_3b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v12

    const-wide/16 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20002(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4197
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3d

    .line 4198
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 4199
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18600(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    .line 4203
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2100b

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4204
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto/16 :goto_3

    .line 4201
    :cond_3c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_c

    .line 4207
    :cond_3d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .line 4213
    :cond_3e
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 4214
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Link is still poor, time left="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4240
    .end local v4    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v9    # "rssi":I
    .end local v10    # "time":J
    :sswitch_8
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "RSSI_FETCH_FAILED"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4244
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 4245
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "enableHIPRI"

    invoke-virtual {v12, v13, v14}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4247
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_3f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "[VerifyingLinkState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$20900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4248
    :cond_3f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_3

    .line 4254
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2101f

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21000(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4255
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_46

    .line 4256
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_40

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_43

    .line 4258
    :cond_40
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_41

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :cond_41
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_42

    .line 4260
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    .line 4261
    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 4262
    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-eqz v12, :cond_45

    .line 4263
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_44

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :cond_44
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 4265
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    .line 4266
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 4268
    :cond_45
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4271
    :cond_46
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_47

    .line 4272
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    .line 4276
    :goto_d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4277
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    goto/16 :goto_3

    .line 4274
    :cond_47
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    const v13, 0x2103d

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 4283
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 4284
    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "EVENT_SCAN_TIMEOUT while VerifyingLinkState - reset scanning flag."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4292
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x21046

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21100(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4294
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4f

    .line 4295
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_48

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_4a

    .line 4297
    :cond_48
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_49

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    :cond_49
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const v13, 0x2103e

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    .line 4299
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9304(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 4300
    :cond_4a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-eqz v12, :cond_4c

    .line 4301
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_4b

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    :cond_4b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    const v13, 0x2103e

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 4303
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v13, 0x2101f

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 4304
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    if-eqz v12, :cond_4e

    .line 4305
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_4d

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "resume the recovery qc canceled by scan"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    :cond_4d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    .line 4308
    :cond_4e
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4311
    :cond_4f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$21200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 4317
    :sswitch_d
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_50

    const-string v12, "WifiWatchdogStateMachine"

    const-string v13, "[VerifyingLinkState] DELAYED_QUALITY_CHECK"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    :cond_50
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    .line 3786
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_5
        0x2100b -> :sswitch_6
        0x2101f -> :sswitch_d
        0x21023 -> :sswitch_0
        0x2102c -> :sswitch_4
        0x2103d -> :sswitch_a
        0x2103e -> :sswitch_c
        0x2103f -> :sswitch_9
        0x21046 -> :sswitch_b
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
        0x50000 -> :sswitch_2
        0x50005 -> :sswitch_3
    .end sparse-switch

    .line 4047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
